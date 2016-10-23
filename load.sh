insmod calc.ko || exit
mknod /dev/first c $(awk '$2=="first" {print $1}' /proc/devices) 0
mknod /dev/second c $(awk '$2=="second" {print $1}' /proc/devices) 0
mknod /dev/operation c $(awk '$2=="operation" {print $1}' /proc/devices) 0
mknod /dev/result c $(awk '$2=="result" {print $1}' /proc/devices) 0

chmod 666 /dev/first
chmod 666 /dev/second
chmod 666 /dev/operation
chmod 444 /dev/result
