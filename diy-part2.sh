#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.200/g' package/base-files/files/bin/config_generate

git clone https://github.com/281677160/openwrt-package package/danshui
git clone https://github.com/jerrykuku/luci-app-ttnode package/luci-app-ttnode
git clone https://github.com/garypang13/luci-app-eqos package/luci-app-eqos
git clone https://github.com/godros/luci-app-godproxy package/luci-app-godproxy
git clone https://github.com/linkease/luci-app-linkease package/luci-app-linkease
