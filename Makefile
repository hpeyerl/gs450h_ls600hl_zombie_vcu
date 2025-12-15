all: zombie.png
#
# Uncomment whichever inverter you're using
#
#INVERTER=gs450h
INVERTER=ls600hl

CONNECTORS=  \
             connectors/bmw_pedal_v2.yml \
             connectors/honda_fit_pedal.yml \
             connectors/l110_ect_solenoid.yml \
             connectors/l110_oil_pump.yml \
             connectors/l110_shift_lever_position_sensor.yml \
             connectors/l110_vehicle_speed_sensor.yml \
             connectors/${INVERTER}_inverter.yml \
             connectors/toyota_mg1_resolver_conn.yml \
             connectors/toyota_mg2_resolver_conn.yml \
             connectors/zombie56.yml  \
             connectors/12awg_heat_shrink_ring_terminal.yml \
             connectors/auto_relay.yml

zombie.yml:  zombie.cpp  ${CONNECTORS}
	cpp zombie.cpp -o zombie.yml

zombie.png: zombie.yml
	wireviz zombie.yml
