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



rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/vernesong/OpenClash/raw/master/luci-app-openclash package/luci-app-openclash
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
