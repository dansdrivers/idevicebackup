# idevicebackup
# Example result like so after connecting iphone

auser@ubuntu64:~$ ./backupidevices.sh
Backup directory is "/media/auser/avolume/idevicebackup/iPhone"
Started "com.apple.mobilebackup2" service on port 50931.
Negotiated Protocol Version 2.1
Reading Info.plist from backup.
Starting backup...
Backup will be unencrypted.
Requesting backup from device...
Incremental backup mode.
Sending '0ec8cfdca416bcb7142258919b653c6d00f14b78/Status.plist' (189 Bytes)
Sending '0ec8cfdca416bcb7142258919b653c6d00f14b78/Manifest.plist' (4.7 KB)
Sending '0ec8cfdca416bcb7142258919b653c6d00f14b78/Manifest.mbdb' (300.0 KB)
[=                                                 ]   0% Finished
Receiving files
[=========================================         ]  81% Finished/91.5 MB)      
Receiving files
[==================================================] 100% (18.2 MB/18.2 MB)      
[==================================================] 100% (18.2 MB/18.2 MB)     
[================================================= ]  97% Finished
[================================================= ]  97% Finished
[================================================= ]  97% Finished
[================================================= ]  97% Finished
Moving 128 files
[==================================================]  99% Finished
Moving 23 files
[==================================================]  99% Finished
Moving 1 file
[==================================================]  99% Finished
Moving 1 file
[==================================================]  99% Finished
[==================================================] 100% Finished
Removing 2 files
[==================================================] 100% Finished
Removing 1 file
[==================================================] 100% Finished
Removing 1 file
[==================================================] 100% Finished
[==================================================] 100% Finished
Received 157 files from device.
Backup Successful.
sending incremental file list
>f+++++++++ DCIM/842GGLUF/IMG_4281.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4282.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4283.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4284.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4285.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4286.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4287.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4288.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4289.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4290.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4291.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4292.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4293.JPG
>f+++++++++ DCIM/842GGLUF/IMG_4294.JPG

sent 29,789,134 bytes  received 288 bytes  8,511,263.43 bytes/sec
total size is 496,833,888  speedup is 16.68
auser@ubuntu64:~$ 

