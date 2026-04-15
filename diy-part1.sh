#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# 添加 kenzok8 常用插件包 (包含科学上网、去广告等绝大多数常用插件)
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git' >> feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small.git' >> feeds.conf.default

# 添加 iStore 商店和 QuickStart 卡片首页的官方直连库
echo 'src-git istore https://github.com/linkease/istore.git;main' >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
