#!/bin/bash
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
apt-get install python-pip

#ubuntu 14.04 LTS dependencies
apt-get install python-dev
apt-get install python-m2crypto
apt-get install swig
pip install pycrypto

#kali dependencies
pip install iptools
pip install pydispatcher
