#!/bin/bash

curl http://tarantool.org/dist/public.key | sudo apt-key add -
echo "deb http://tarantool.org/dist/master/ubuntu/ `lsb_release -c -s` main" | sudo tee -a /etc/apt/sources.list.d/tarantool.list
sudo apt-get update > /dev/null
sudo apt-get -q -y install tarantool
pip install -r requirements.txt
python setup.py test
