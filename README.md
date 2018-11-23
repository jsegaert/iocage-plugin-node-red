# iocage-plugin-node-red
Artifact file(s) for Node-RED iocage plugin

## To install this plugin
Download the plugin manifest file to your local file system.
```
fetch https://raw.githubusercontent.com/jsegaert/iocage-my-plugins/master/node-red.json
```
Install the plugin.  Adjust host interface and IP address as needed.  
```
iocage fetch -P -n node-red.json ip4_addr="em0|192.168.0.100/24"
```

