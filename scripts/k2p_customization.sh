#!/bin/bash

set -ex

# Allow chips that support 11ac to use 256QAM on 2.4GHz
cp -rf ../immortalwrt/package/kernel/mt76/patches package/kernel/mt76/



source ./01_customize_packages.sh


# 修改默认ip
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

exit 0
