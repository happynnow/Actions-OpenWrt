#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i '5s/#src-git/src-git/' $HOME/lede/feeds.conf.default
sleep 5
rm -rf $HOME/lede/tmp 
cd $HOME/lede && ./scripts/feeds update -a && ./scripts/feeds install -a 
make menuconfig
