#!/bin/bash

echo
echo This script installs the prerequisits for temperhum.py on a Raspberry Pi and copies
echo temperhum.py to /usr/local/bin
read -p "Continue [Y/N]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

    set -x

    sudo apt-get upgrade
    sudo apt-get -y install python-usb python3-usb python-setuptools python3-setuptools
    sudo cp  ./99-temperhum.rules /etc/udev/rules.d
    sudo adduser pi plugdev
    sudo cp ./temperhum.py /usr/local/bin
    { set +x; } 2>&-
                                    
fi


