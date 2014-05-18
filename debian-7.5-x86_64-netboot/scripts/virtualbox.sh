#!/bin/bash

# Bail if we are not running inside VirtualBox.
if [[ `facter virtual` != "virtualbox" ]]; then
    exit 0
fi

mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso