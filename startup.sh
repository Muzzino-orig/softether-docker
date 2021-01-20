#!/bin/bash

openvpn --mktun --dev tap_softet
sleep 1
brctl addif br0 tap_softet

/root/vpnserver execsvc #start >&/dev/null

brctl delif br0 tap_softet
openvpn --rmtun --dev tap_softet
