#!/bin/bash
apt install -y sg3-utils
wget https://github.com/justinschmitt/setblocksize/raw/master/setblocksize
wget https://github.com/justinschmitt/setblocksize/raw/master/multisetblocksize.sh
chmod +x setblocksize
chmod +x multisetblocksize.sh