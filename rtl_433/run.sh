#!/usr/bin/with-contenv bashio

conf_directory="/config/rtl_433"
conf_file="rtl_433.conf"
rtl_433_pids=() # Initialize an array to store process IDs

# Function to handle errors and exit the script
handle_error() {
    local exit_code=$1
    local error_message=$2
    echo "Error: $error_message" >&2
    exit $exit_code
}

# Check if the configuration directory exists
if [ ! -d "$conf_directory" ]; then
    mkdir -p "$conf_directory" || handle_error 1 "Failed to create config directory"
fi

# Check if the configuration file exists
if [ ! -f "$conf_directory/$conf_file" ]; then
    wget https://raw.githubusercontent.com/catduckgnaf/rtl_433_ha/main/config/rtl_433.conf -O "$conf_directory/$conf_file" || handle_error 2 "Failed to download configuration file"
fi

# Check the output options specified in the configuration
if output_options=$(bashio::config "websocket"); then
    host=$(bashio::config "ws_http_host")
    port=$(bashio::config "ws_http_port")
    echo "Starting rtl_433 with websocket option on $host:$port with $conf_file..."
    rtl_433 -c $conf_directory/$conf_file" -F "http://$host:$port" &
    rtl_433_pids+=($!)
    
elif output_options=$(bashio::config "mqtt"); then
    host=$(bashio::services "mqtt" "host")
    password=$(bashio::services "mqtt" "password")
    port=$(bashio::services "mqtt" "port")
    username=$(bashio::services "mqtt" "username")
    retain=$(bashio::config "retain")
    echo "Starting rtl_433 with MQTT Option $conf_file..."
    rtl_433 -c "$conf_directory/$conf_file" -F "mqtt://$host:$port,retain=1,devices=rtl_433[/id]" &
    rtl_433_pids+=($!)

elif output_options=$(bashio::config "udp"); then
    host=$(bashio::services "mqtt" "host")
    port=$(bashio::services "mqtt" "port")
    echo "Starting rtl_433 with UDP option on $host:$port with $conf_file..."
    rtl_433 -c "$conf_directory/$conf_file" "-F" &
    rtl_433_pids+=($!)
else
    handle_error 3 "No valid output options specified in the configuration"
fi

# Wait for all background rtl_433 processes to complete
for pid in "${rtl_433_pids[@]}"; do
    wait "$pid" || handle_error 4 "One of the rtl_433 processes failed to complete"
done
