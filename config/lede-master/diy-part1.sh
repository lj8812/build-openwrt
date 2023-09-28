#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

##############################################################################################

# 主题
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne

##############################################################################################


# 状态

# 实时监控 lede包已有 最近有bug

# 释放内存 lede包已有
# git clone https://github.com/chinaboy2345/luci-app-ramfree.git package/luci-app-ramfree

##############################################################################################

#  系统

#定时重启
#git clone https://github.com/f8q8/luci-app-autoreboot.git package/luci-app-autoreboot

#ttyd lede包已有

#磁盘管理
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#文件传输 lede包已有

#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

##############################################################################################

# 服务

#ShadowSocksR Plus+
git clone https://github.com/fw876/helloworld.git package/helloworld

#passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall

#helloword
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/fw876/helloworld.git package/helloworld

#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#luci-app-adguardhome
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome

#luci-app-adbyby-plus
git clone https://github.com/ywt114/luci-app-adbyby-plus package/luci-app-adbyby-plus

##############################################################################################

# 网络

#Turbo ACC 加速 lede包已有
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/luci-app-turboacc


##############################################################################################

