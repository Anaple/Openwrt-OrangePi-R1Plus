#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加 AdGuard Home
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 添加 OpenClash
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash

git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git
git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust.git


