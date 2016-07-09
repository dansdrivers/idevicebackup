#!/bin/bash
# backup any idevice that is connected to Ubuntu 16.04 LTS
# discovery for the device should be as automatic as possible

DEST_DIR=/media/auser/avolume/idevicebackup

# Writes a list of dmesg reported devices to /tmp/devices
dmesg |  grep -B 1 -A 1 "Manufacturer: Apple Inc." \
	| cut -d ']' -f 2 | grep -v '\-\-' | grep -v Apple  \
	| awk -F ': ' '{print $3}' | paste -d " " - - | sort | uniq > /tmp/devices

# If those devices are connected, run the backup function for each.
while read -r DEV SERIAL; do 
   /usr/bin/ideviceinfo -u $SERIAL > /dev/null 2>&1
   if [ $? -eq 0 ]; then
   	#runbackup $DEV $SERIAL
   	if [ ! -d $DEST_DIR/$DEV ]; then
   		/bin/mkdir -p $DEST_DIR/$DEV
   	fi
  		/usr/bin/idevicebackup2 -u $SERIAL backup $DEST_DIR/$DEV
	fi
done < /tmp/devices

# Writes a list of gvfs folders where the devices reveal the DCIM storage.
ls -1 /run/user/$(id -u)/gvfs/ | grep gphoto \
	| while read line; \
		do echo "/run/user/$(id -u)/gvfs/$line"; \
	  done \
	| while read line; do \
		DEV=$(gvfs-info "$line" | grep "display name" | cut -d ' ' -f 3); \
		echo "$DEV $line"; done > /tmp/dcims

while read -r DEV DIR; do 
	/usr/bin/rsync -avi $DIR/DCIM $DEST_DIR/$DEV
done < /tmp/dcims

