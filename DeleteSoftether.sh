#!/bin/bash

# go to root
cd

# stop service softether
service vpnserver stop

# disable autorun service
rm -rf /etc/init.d/vpnserver

# delete file directory
rm -rf /usr/local/vpnserver

# info
clear
echo -e "Please type \e[1;31mSoftetherAutoInstall successfully uninstall\e[0m for options"

echo "================================================"


