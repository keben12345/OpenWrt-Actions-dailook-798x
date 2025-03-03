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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default

# 自定义软件源
git clone --depth 1 -b main https://github.com/QiYueYiya/openwrt-packages package/openwrt-packages
# Mosdns
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
#rm -rf feeds/packages/net/v2ray-geodata
#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
# Easytier
# git clone --depth 1 -b main https://github.com/EasyTier/luci-app-easytier.git luci-app-easytier
git clone --depth 1 -b master https://github.com/brvphoenix/luci-app-wrtbwmon.git luci-app-wrtbwmon
# mv luci-app-easytier/easytier package/easytier
# mv luci-app-easytier/luci-app-easytier package/luci-app-easytier
# rm -rf luci-app-easytier
mv luci-app-wrtbwmon package/luci-app-wrtbwmon
rm -rf luci-app-wrtwmon
