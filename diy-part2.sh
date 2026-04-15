#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 强行勾选 AX3600 的机型（防止系统按默认 x86 编译）
echo "CONFIG_TARGET_qualcommax=y" >> .config
echo "CONFIG_TARGET_qualcommax_ipq807x=y" >> .config
echo "CONFIG_TARGET_qualcommax_ipq807x_DEVICE_xiaomi_ax3600=y" >> .config

# 强行勾选你要的插件（=y 就是你在 SSH 菜单里按空格打上的星号 <*>）
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> .config
echo "CONFIG_PACKAGE_luci-app-quickstart=y" >> .config
echo "CONFIG_PACKAGE_luci-app-istorex=y" >> .config
echo "CONFIG_PACKAGE_luci-app-zerotier=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
