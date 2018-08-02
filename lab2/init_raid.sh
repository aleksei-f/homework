#!/usr/bin/env bash

mdadm --create --verbose /dev/md0 --level=10 -n 6 /dev/sd[b-g]
mkfs.ext4 /dev/md0

mkdir /mnt/raid
echo "/dev/md0 /mnt/raid ext4 defaults  0 2" >> /etc/fstab
mount -a