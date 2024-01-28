#!/usr/bin/with-contenv bashio

conf_directory="/config/rtl_433"
script_directory="/config/rtl_433/scripts"
log_directory="/config/rtl_433/logs"
conf_file="rtl_433.conf"
http_script="rtl_433_http_ws.py"
mqtt_script="rtl_433_mqtt_hass.py"
discovery_host="core-mosquitto"
discovery_port=1883
discovery_topic="devices=rtl_433/9b13b3f4-rtl433/devices[/type][/model][/subtype][/channel][/id],events=rtl_433/9b13b3f4-rtl433/events,states=rtl_433/9b13b3f4-rtl43"
discovery_prefix="rtl_433_discovery"
discovery_interval=600
rtl_device_id_1=$(bashio::config 'rtl_device_id_1')
rtl_device_id_2=$(bashio::config 'rtl_device_id_2')
rtl_device_id_3=$(bashio::config 'rtl_device_id_3')
rtl_device_id_4=$(bashio::config 'rtl_device_id_4')
rtl_device_id_5=$(bashio::config 'rtl_device_id_5')
rtl_device_id_6=$(bashio::config 'rtl_device_id_6')
rtl_device_id_7=$(bashio::config 'rtl_device_id_7')
rtl_device_id_8=$(bashio::config 'rtl_device_id_8')
1_silvercrest_remote_control=1
2_rubicson_tfa_30_3197_infactory_pt_310_temperature_sensor=2
3_prologue_freetec_nc_7104_nc_7159_675_temperature_sensor=3
4_waveman_switch_transmitter=4
8_lacrosse_tx_temperature_humidity_sensor=8
9_acurite_896_rain_gauge=9
10_acurite_609txc_temperature_and_humidity_sensor=10
11_oregon_scientific_weather_sensor=11
12_klikaanklikuit_wireless_switch=12
13_alectov1_weather_sensor_alecto_ws3500_ws4500_ventus_w155_w044_oregon=13
14_cardin_s466_tx2=14
15_fine_offset_electronics_wh2_wh5_telldus_temperature_humidity_rain_sensor=15
16_nexus_freetec_nc_7345_nx_3980_solight_te82s_tfa_30_3209_temperature_humidity_sensor=16
17_ambient_weather_f007th_tfa_30_3208_02_switchdoclabs_f016th_temperature_sensor=17
18_calibeur_rf_104_sensor=18
19_x10_rf=19
20_dsc_security_contact=20
21_globaltronics_gt_wt_02_sensor=21
22_danfoss_cfr_thermostat=22
23_chuango_security_technology=23
24_generic_remote_sc226x_ev1527=24
25_tfa_twin_plus_30_3049_conrad_kw9010_ea2_bl999=25
26_fine_offset_electronics_wh1080_wh3080_weather_station=26
27_wt450_wt260h_wt405h=27
28_lacrosse_ws_2310_ws_3600_weather_station=28
29_esperanza_ews=29
30_efergy_e2_classic=30
31_inovalley_kw9015b_tfa_dostmann_30_3161_rain_and_temperature_sensor=31
32_generic_temperature_sensor_1=32
33_wg_pb12v1_temperature_sensor=33
34_acurite_592txr_temp_humidity_592tx_temp_5n1_weather_station_6045_lightning_899_rain_3n1_atlas=34
35_acurite_986_refrigerator_freezer_thermometer=35
36_hideki_ts04_temperature_humidity_wind_and_rain_sensor=36
37_watchman_sonic_apollo_ultrasonic_beckett_rocket_oil_tank_monitor=37
38_currentcost_current_sensor=38
39_emontx_openenergymonitor=39
40_ht680_remote_control=40
41_conrad_s3318p_freetec_nc_5849_913_temperature_humidity_sensor=41
42_akhan_100f14_remote_keyless_entry=42
43_quhwa=43
44_osv1_temperature_sensor=44
45_proove_nexa_klikaanklikuit_wireless_switch=45
46_bresser_thermo_hygro_sensor_3ch=46
47_springfield_temperature_and_soil_moisture=47
48_oregon_scientific_sl109h_remote_thermal_hygro_sensor=48
49_acurite_606tx_temperature_sensor=49
50_tfa_pool_temperature_sensor=50
51_kedsum_temperature_humidity_sensor_pearl_nc_7415=51
52_blyss_dc5_uk_wh=52
53_lightwaverf=53
54_elro_db286a_doorbell=54
55_efergy_optical=55
56_honda_car_key=56
57_radiohead_ask=57
58_kerui_pir_contact_sensor=58
59_fine_offset_wh1050_weather_station=59
60_honeywell_door_window_sensor_2gig_dw10_dw11_re208_repeater=60
61_maverick_et_732_733_bbq_sensor=61
62_rf_tech=62
63_lacrosse_tx141_bv2_tx141th_bv2_tx141_bv3_tx141w_tx145wsdth_tfa_oria_sensor=63
64_acurite_00275rm_00276rm_temp_humidity_with_optional_probe=64
65_lacrosse_tx35dth_it_tfa_dostmann_30_3155_temperature_humidity_sensor=65
66_lacrosse_tx29it_tfa_dostmann_30_3159_it_temperature_sensor=66
67_vaillant_calormatic_vrt340f_central_heating_control=67
68_fine_offset_electronics_wh25_wh32b_wh24_wh65b_hp1000_misol_ws2320_temperature_humidity_pressure_sensor=68
69_fine_offset_electronics_wh0530_temperature_rain_sensor=69
70_ibis_beacon=70
71_oil_ultrasonic_standard_fsk=71
72_oil_ultrasonic_standard_ask=72
73_thermopro_tp11_thermometer=73
74_solight_te44_te66_emos_e0107t_nx_6876_917=74
75_wireless_smoke_and_heat_detector_gs_558=75
76_generic_wireless_motion_sensor=76
77_infactory_nor_tec_freetec_nc_3982_913_temperature_humidity_sensor=77
78_ft_004_b_temperature_sensor=78
79_ford_car_key=79
80_philips_outdoor_temperature_sensor_type_aj3650=80
81_nexa=81
82_thermopro_tp08_tp12_tp20_thermometer=82
83_ge_color_effects=83
84_x10_security=84
85_interlogix_ge_utc_security_devices=85
86_dish_remote_6_3=86
87_simplisafe_home_security_system_may_require_disabling_automatic_gain_for_keypad_decodes=87
88_sensible_living_mini_plant_moisture_sensor=88
89_wireless_m_bus_mode_c_t_100kbps_f_868_95m_s_1200k=89
90_wireless_m_bus_mode_s_32_768kbps_f_868_3m_s_1000k=90
91_wireless_m_bus_mode_r_4_8kbps_f_868_33m=91
92_wireless_m_bus_mode_f_2_4kbps=92
93_hyundai_ws_senzor_remote_temperature_sensor=93
94_wt0124_pool_thermometer=94
95_emos_ttx201_temperature_sensor=95
96_ambient_weather_tx_8300_temperature_humidity_sensor=96
97_ambient_weather_wh31e_thermo_hygrometer_sensor_ecowitt_wh40_rain_gauge=97
98_maverick_et73=98
99_honeywell_activlink_wireless_doorbell=99
100_honeywell_activlink_wireless_doorbell_fsk=100
101_esa1000_esa2000_energy_monitor=101
102_biltema_rain_gauge=102
103_bresser_weather_center_5_in_1=103
104_digitech_xc_0324_ambientweather_ft005th_temp_hum_sensor=104
105_opus_imagintronix_xt300_soil_moisture=105
106_fs20=106
107_lacrosse_elv_conrad_ws7000_ws2500_weather_sensors=107
108_ts_ft002_wireless_ultrasonic_tank_liquid_level_meter_with_temperature_sensor=108
109_companion_wtr001_temperature_sensor=109
110_ecowitt_wireless_outdoor_thermometer_wh53_wh0280_wh0281a=110
111_directv_rc66rx_remote_control=111
112_eurochron_temperature_and_humidity_sensor=112
113_ikea_sparsnas_energy_meter_monitor=113
114_microchip_hcs200_hcs300_keeloq_hopping_encoder_based_remotes=114
115_tfa_dostmann_30_3196_t_h_outdoor_sensor=115
116_rubicson_48659_thermometer=116
117_aok_weather_station_rebrand_holman_industries_iweather_ws5029_conrad_aok_5056_optex_990018=117
118_philips_outdoor_temperature_sensor_type_aj7010=118
119_esic_emt7110_power_meter=119
120_globaltronics_quigg_gt_tmbbq_05=120
121_globaltronics_gt_wt_03_sensor=121
122_norgo_nge101=122
123_auriol_hg02832_hg05124a_dcf_rubicson_48957_temperature_humidity_sensor=123
124_fine_offset_electronics_ecowitt_wh51_switchdoc_labs_sm23_soil_moisture_sensor=124
125_holman_industries_iweather_ws5029_weather_station_older_pwm=125
126_tbh_weather_sensor=126
127_ws2032_weather_station=127
128_auriol_afw2a1_temperature_humidity_sensor=128
129_tfa_drop_rain_gauge_30_3233_01=129
130_dsc_security_contact_ws4945=130
131_ert_standard_consumption_message_scm=131
132_klimalogg=132
133_visonic_powercode=133
134_eurochron_efth_800_temperature_and_humidity_sensor=134
135_cotech_36_7959_switchdoclabs_ft020t_wireless_weather_station_with_usb=135
136_standard_consumption_message_plus_scmplus=136
137_fine_offset_electronics_wh1080_wh3080_weather_station_fsk=137
138_missil_ml0757_weather_station=138
139_sharp_spc775_weather_station=139
140_insteon=140
141_ert_interval_data_message_idm=141
142_ert_interval_data_message_idm_for_net_meters=142
143_thermopro_tx2_temperature_sensor=143
144_acurite_590tx_temperature_with_optional_humidity=144
145_security_2_0_keyfob=145
146_tfa_dostmann_30_3221_02_t_h_outdoor_sensor=146
147_lacrosse_technology_view_ltv_wsdth01_breeze_pro_wind_sensor=147
148_somfy_rts=148
149_nice_flor_s_remote_control_for_gates=149
150_lacrosse_technology_view_ltv_wr1_multi_sensor=150
151_lacrosse_technology_view_ltv_th_thermo_hygro_sensor=151
152_bresser_weather_center_6_in_1_7_in_1_indoor_soil_new_5_in_1_3_in_1_wind_gauge_froggit_wh6000_ventus_c8488a=152
153_bresser_weather_center_7_in_1=153
154_ecodhome_smart_socket_and_mcee_solar_monitor=154
155_lacrosse_technology_view_ltv_r1_ltv_r3_rainfall_gauge_ltv_w1_w2_wind_sensor=155
156_blueline_innovations_power_cost_monitor=156
157_burnhard_bbq_thermometer=157
158_security_keyfob=158
159_cavius_smoke_heat_and_water_detector=159
160_amazon_basics_meat_thermometer=160
161_tfa_marbella_pool_thermometer=161
162_auriol_ahfl_temperature_humidity_sensor=162
163_auriol_aft_77_b2_temperature_sensor=163
164_honeywell_cm921_wireless_programmable_room_thermostat=164
165_rojaflex_shutter_and_remote_devices=165
166_marlec_solar_iboot_sensors=166
167_somfy_io_homecontrol=167
168_ambient_weather_wh31l_fineoffset_wh57_lightning_strike_sensor=168
169_markisol_e_motion_bofu_rollerhouse_bf_30x_bf_415_curtain_remote=169
170_govee_water_leak_detector_h5054_door_contact_sensor_b5023=170
171_clipsal_cmr113_cent_a_meter_power_meter=171
172_fine_offset_electronics_ws80_weather_station=172
173_unknown=173
174_emos_e6016_weather=174
175_emos_e6016_weatherstation_with_dcf77=175
176_ant_and_ant_devices=176
177_emos_e6016_rain_gauge=177
178_microchip_hcs200_hcs300_keeloq_hopping_encoder_based_remotes_fsk=178
179_fine_offset_electronics_wh45_air_quality_sensor=179
180_maverick_xr_30_bbq_sensor=180
181_fine_offset_electronics_wn34_temperature_sensor=181
182_rubicson_pool_thermometer_48942=182
183_badger_orion_water_meter_100kbps_f_916_45m_s_1200k=183
184_geo_minim_energy_monitor=184
185_unknown=185
186_unknown=186
187_srsmith_pool_light_remote_control_srs_2c_tx_f_915m=187
188_neptune_r900_flow_meters=188
189_wec_2103_temperature_humidity_sensor=189
190_vauno_en8822c=190
191_govee_water_leak_detector_h5054=191
192_tfa_dostmann_14_1504_v2_radio_controlled_grill_and_meat_thermometer=192
193_ced7000_shot_timer=193
194_watchman_sonic_advanced_plus=194
195_oil_ultrasonic_smart_fsk=195
196_gasmate_ba1008_meat_thermometer=196
197_flowis_flow_meters=197
198_wireless_m_bus_mode_t_32_768kbps_f_868_3m_s_1000k=198
199_revolt_nc_5642_energy_meter=199
200_auriol_4_ld5661_4_ld5972_4_ld6313_temperature_rain_sensors=200
202_funkbus_instafunk_berker_gira_jung=202
204_jasco_ge_choice_alert_security_devices=204
205_telldus_weather_station_ft0385r_sensors=205
206_lacrosse_tx34_it_rain_gauge=206
207_smartfire_proflame_2_remote_control=207
208_unknown=208
209_simplisafe_gen_3_home_security_system=209
210_yale_hsa_home_security_alarm_yes_alarmkit=210
211_regency_ceiling_fan_remote_f_303_75m_to_303_96m=211
213_fine_offset_electronics_ws80_weather_station=213
212_unknown=212
214_emos_e6016_rain_gauge=214
215_emax_w6_rebrand=215
216_ant_and_ant_devices=216
217_emos_e6016_rain_gauge=217
218_microchip_hcs200_hcs300_keeloq_hopping_encoder_based_remotes_fsk=218
219_fine_offset_electronics_wh45_air_quality_sensor=219
220_maverick_xr_30_bbq_sensor=220
221_fine_offset_electronics_wn34_temperature_sensor=221
222_rubicson_pool_thermometer_48942=222
223_badger_orion_water_meter_100kbps_f_916_45m_s_1200k=223
224_geo_minim_energy_monitor=224
225_unknown=225
226_unknown=226
227_srsmith_pool_light_remote_control_srs_2c_tx_f_915m=227
228_neptune_r900_flow_meters=228
229_wec_2103_temperature_humidity_sensor=229
230_vauno_en8822c=230
231_govee_water_leak_detector_h5054=231
232_tfa_dostmann_14_1504_v2_radio_controlled_grill_and_meat_thermometer=232
233_ced7000_shot_timer=233
234_watchman_sonic_advanced_plus=234
235_oil_ultrasonic_smart_fsk=235
236_gasmate_ba1008_meat_thermometer=236
237_flowis_flow_meters=237
238_wireless_m_bus_mode_t_32_768kbps_f_868_3m_s_1000k=238
239_revolt_nc_5642_energy_meter=239
240_lacrosse_tx31u_it_the_weather_channel_ws_1910twc_it=240
226_unknown=226
241_unknown=241
242_baldr_rainpoint_rain_gauge=242
243_celsia_czc1_thermostat=243
244_fine_offset_electronics_ws90_weather_station=244
245_thermopro_tx_2c_thermometer=245
246_unknown=246



# Initialize an array to store process IDs
rtl_433_pids=()

# Function to handle errors and log them
handle_error() {
    local exit_code=$1
    local error_message=$2
    echo "Error: $error_message" >&2
}

# Function to download a file from a URL and log errors
download_file() {
    local url=$1
    local destination=$2
    wget -q "$url" -O "$destination"
    if [ $? -ne 0 ]; then
        handle_error 2 "Failed to download $destination"
    fi
}

# Check if the configuration directory exists and create it if not
if [ ! -d "$conf_directory" ]; then
    mkdir -p "$conf_directory" || handle_error 1 "Failed to create config directory"
fi

# Check if the log directory exists and create it if not
if [ ! -d "$log_directory" ]; then
    mkdir -p "$log_directory" || handle_error 1 "Failed to create log directory"
fi

# Download the configuration file if it doesn't exist
if [ ! -f "$conf_directory/$conf_file" ]; then
    download_file "https://raw.githubusercontent.com/catduckgnaf/rtl_433_ha/main/config/rtl_433_catduck_template.conf" "$conf_directory/$conf_file"
fi

# Check if the script directory exists and create it if not
if [ ! -d "$script_directory" ]; then
    mkdir -p "$script_directory" || handle_error 1 "Failed to create script directory"
fi

# Download the HTTP script if it doesn't exist
if [ ! -f "$script_directory/$http_script" ]; then
    download_file "https://raw.githubusercontent.com/catduckgnaf/rtl_433_ha/main/scripts/rtl_433_http_ws.py" "$script_directory/$http_script" && chmod +x "$script_directory/$http_script"
fi

# Download the MQTT script if it doesn't exist
if [ ! -f "$script_directory/$mqtt_script" ]; then
    download_file "https://raw.githubusercontent.com/catduckgnaf/rtl_433_ha/main/scripts/rtl_433_mqtt_hass.py" "$script_directory/$mqtt_script" && chmod +x "$script_directory/$mqtt_script"
fi

rtl_433 -c "$conf_directory/$conf_file" -R $rtl_device_id_1 $rtl_device_id_2 130
echo "Starting rtl_433 with $conf_file located in $conf_directory with devices $rtl_device_id_1 $rtl_device_id_2

if bashio::config.true 'discovery'; then
    echo "Starting discovery script"
    python3 -u "$script_directory/rtl_433_mqtt_hass.py" -H "$discovery_host" -p "$discovery_port" -R "$discovery_topic" -D "$discovery_prefix" -i "$discovery_interval" --ids "$discovery_ids"
    rtl_433_pids+=($!)
fi

# Instead of waiting for any process to finish, loop indefinitely
while true; do
    sleep infinity
done
