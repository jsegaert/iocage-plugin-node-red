#!/bin/sh

# Defaults for Node-RED settings
user_name=nrserver
user_uid=2001

# Node-RED post install
mkdir -p /usr/local/etc/rc.d
#ln -s /usr/local/bin/bash /bin/bash

npm install -g --unsafe-perm node-red

# Create Node-RED server
pw useradd -n $user_name -u $user_uid -s /usr/local/bin/bash -w random -m

# Enable the service
chmod +x /usr/local/etc/rc.d/nodered
sysrc -f /etc/rc.conf nodered_enable="YES"

# Start the service
service nodered start 2>/dev/null

