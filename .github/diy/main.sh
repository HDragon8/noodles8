#!/bin/bash
function git_clone() {
  git clone --depth 1 $1 $2 || true
 }
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  cd $localdir
  git sparse-checkout init --cone
  git sparse-checkout set $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git clone --depth 1 https://github.com/HDragon8/noodles-default-settings noodles-default-settings
git clone --depth 1 https://github.com/kiddin9/luci-theme-edge
git clone --depth 1 https://github.com/kiddin9/openwrt-amule-dlp && mvdir openwrt-amule-dlp
git clone --depth 1 https://github.com/yichya/luci-app-xray
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall && mvdir openwrt-passwall
git clone --depth 1 https://github.com/fw876/helloworld && mvdir helloworld
git clone --depth 1 -b luci https://github.com/xiaorouji/openwrt-passwall passwall1 && mv -n passwall1/luci-app-passwall  ./; rm -rf passwall1
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 passwall2 && mv -n passwall2/luci-app-passwall2 ./;rm -rf passwall2
git clone --depth 1 https://github.com/Lienol/openwrt-package
git clone --depth 1 https://github.com/messense/aliyundrive-webdav aliyundrive && mv -n aliyundrive/openwrt/* ./ ; rm -rf aliyundrive
git clone --depth 1 https://github.com/messense/aliyundrive-fuse aliyundrive && mv -n aliyundrive/openwrt/* ./;rm -rf aliyundrive
git clone --depth 1 https://github.com/ysc3839/openwrt-minieap
git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth 1 https://github.com/BoringCat/luci-app-minieap
git clone --depth 1 https://github.com/peter-tank/luci-app-dnscrypt-proxy2
git clone --depth 1 https://github.com/peter-tank/luci-app-autorepeater
git clone --depth 1 https://github.com/rufengsuixing/luci-app-autoipsetadder
git clone --depth 1 https://github.com/ElvenP/luci-app-onliner
git clone --depth 1 https://github.com/rufengsuixing/luci-app-usb3disable
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git clone --depth 1 https://github.com/NateLol/luci-app-beardropper
git clone --depth 1 https://github.com/yaof2/luci-app-ikoolproxy
git clone --depth 1 https://github.com/project-lede/luci-app-godproxy
git clone --depth 1 https://github.com/sbwml/openwrt-alist && mvdir openwrt-alist
git clone --depth 1 https://github.com/tty228/luci-app-serverchan
git clone --depth 1 https://github.com/4IceG/luci-app-sms-tool smstool && mvdir smstool
git clone --depth 1 https://github.com/shanglanxin/luci-app-homebridge
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff
git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
git clone --depth 1 https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/sirpdboy/luci-theme-opentopd
#git clone --depth 1 https://github.com/sirpdboy/luci-app-netdata
#git clone --depth 1 https://github.com/Jason6111/luci-app-netdata
git clone --depth 1 https://github.com/sirpdboy/luci-app-poweroffdevice
git clone --depth 1 https://github.com/sirpdboy/luci-app-autotimeset
git clone --depth 1 https://github.com/KFERMercer/luci-app-tcpdump
#git clone --depth 1 https://github.com/jefferymvp/luci-app-koolproxyR
git clone --depth 1 https://github.com/wolandmaster/luci-app-rtorrent
#git clone --depth 1 https://github.com/NateLol/luci-app-oled
#git clone --depth 1 https://github.com/lloyd18/luci-app-npc
git clone --depth 1 https://github.com/hubbylei/luci-app-clash
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/lvqier/luci-app-dnsmasq-ipset
git clone --depth 1 https://github.com/walkingsky/luci-wifidog luci-app-wifidog
git clone --depth 1 https://github.com/CCnut/feed-netkeeper && mvdir feed-netkeeper
git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb
git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git clone --depth 1 https://github.com/gdck/luci-app-cupsd cupsd1 && mv -n cupsd1/luci-app-cupsd cupsd1/cups/cups ./ ; rm -rf cupsd1
git clone --depth 1 https://github.com/QiuSimons/openwrt-mos && mv -n openwrt-mos/*mosdns ./ ; rm -rf openwrt-mos
git clone --depth 1 https://github.com/peter-tank/luci-app-fullconenat
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/kenzok8/luci-theme-ifit ifit && mv -n ifit/luci-theme-ifit ./;rm -rf ifit
git clone --depth 1 https://github.com/kenzok78/openwrt-minisign
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/ophub/luci-app-amlogic amlogic && mv -n amlogic/luci-app-amlogic ./;rm -rf amlogic
git clone --depth 1 https://github.com/lisaac/luci-app-dockerman dockerman && mv -n dockerman/applications/* ./; rm -rf dockerman

git clone --depth 1 https://github.com/brvphoenix/luci-app-wrtbwmon wrtbwmon1 && mvdir wrtbwmon1
git clone --depth 1 https://github.com/brvphoenix/wrtbwmon wrtbwmon2 && mvdir wrtbwmon2

git clone --depth 1 https://github.com/linkease/nas-packages && mv -n nas-packages/{network/services/*,multimedia/*} ./; rm -rf nas-packages
git clone --depth 1 https://github.com/linkease/nas-packages-luci && mv -n nas-packages-luci/luci/* ./; rm -rf nas-packages-luci
git clone --depth 1 https://github.com/linkease/istore && mv -n istore/luci/* ./; rm -rf istore
git clone --depth 1 https://github.com/linkease/openwrt-app-actions && mv -n openwrt-app-actions/applications/* ./;rm -rf openwrt-app-actions
git clone --depth 1 https://github.com/ZeaKyX/luci-app-speedtest-web
git clone --depth 1 https://github.com/ZeaKyX/speedtest-web
git clone --depth 1 https://github.com/Huangjoe123/luci-app-eqos
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky
#git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky lucik && mv -n lucik/luci-app-lucky ./ ; rm -rf lucik
git clone --depth 1 https://github.com/Hyy2001X/AutoBuild-Packages && rm -rf AutoBuild-Packages/luci-app-adguardhome && mvdir AutoBuild-Packages
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go ddns-go && mvdir ddns-go
#git_clone https://github.com/sirpdboy/netspeedtest && mv -n netspeedtest/luci-app-netspeedtest ./ ; rm -rf netspeedtest
git clone --depth 1 https://github.com/sirpdboy/netspeedtest && mvdir netspeedtest
git clone --depth 1 https://github.com/HDragon8/add_openwrt_Build_name
git clone --depth 1 https://github.com/gngpp/luci-app-design-config
git clone --depth 1 -b js https://github.com/gngpp/luci-theme-design
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/esirplayground/LingTiGameAcc
git clone --depth 1 https://github.com/esirplayground/luci-app-LingTiGameAcc
git clone --depth 1 -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
git clone --depth 1 https://github.com/AlexZhuo/luci-app-bandwidthd

#svn export https://github.com/coolsnowwolf/luci/trunk/libs/luci-lib-ipkg
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-filebrowser
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-aliddns
#svn export https://github.com/immortalwrt/packages/trunk/net/smartdns
svn export https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/trunk/tencentcloud_ddns luci-app-tencentddns
svn export https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-cos/trunk/tencentcloud_cos luci-app-tencentcloud-cos
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome
#svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome
svn export https://github.com/sirpdboy/sirpdboy-package/trunk/adguardhome
svn export https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome
svn export https://github.com/kenzok8/litte/trunk/luci-theme-atmaterial_new
svn export https://github.com/kenzok8/litte/trunk/luci-theme-mcat
svn export https://github.com/kenzok8/litte/trunk/luci-theme-tomato
svn export https://github.com/x-wrt/packages/trunk/net/nft-qos
svn export https://github.com/x-wrt/luci/trunk/applications/luci-app-nft-qos
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass
#svn export https://github.com/fw876/helloworld/trunk/sagernet-core
#svn export https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
#svn export https://github.com/fw876/helloworld/trunk/lua-neturl
#svn export https://github.com/fw876/helloworld/trunk/redsocks2
#svn export https://github.com/fw876/helloworld/trunk/microsocks
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
svn export https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest/trunk/applications/luci-app-cloudflarespeedtest
svn export https://github.com/doushang/luci-app-shortcutmenu/trunk/luci-app-shortcutmenu
svn export https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
svn export https://github.com/sbilly/netmaker-openwrt/trunk/netmaker
#svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2
#svn export https://github.com/openwrt/packages/trunk/net/shadowsocks-libev
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-timewol
#svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-unblockneteasemusic
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-xunlei
svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-gowebdav
svn export https://github.com/immortalwrt/packages/trunk/net/gowebdav
#svn export https://github.com/immortalwrt/luci/trunk/applications/luci-app-firewall
#svn export https://github.com/immortalwrt/immortalwrt/trunk/target/linux/generic/hack-5.10/952-net-conntrack-events-support-multiple-registrant.patch
#svn export https://github.com/istoreos/istoreos/trunk/package/istoreos-files
#kiddin9's packages

git_sparse_clone master "https://github.com/kiddin9/openwrt-packages" "kinddin9" autocore luci-base luci-mod-status luci-mod-system luci-app-samba4
#firewall firewall4 luci-app-firewall
# fullcone-nat
#git_sparse_clone istoreos-22.03-test "https://github.com/istoreos/istoreos" "isapp" package/network/utils/nftables package/libs/libnftnl \
#package/network/config/firewall package/network/config/firewall4 \
#package/kernel/fullconenat-nft package/kernel/fullconenat

rm -rf luci-app-netdata

git_sparse_clone develop "https://github.com/Ysurac/openmptcprouter-feeds" "enmptcp" luci-app-snmpd \
luci-app-packet-capture luci-app-mail msmtp
git_sparse_clone master "https://github.com/x-wrt/com.x-wrt" "x-wrt" natflow lua-ipops luci-app-macvlan
git_sparse_clone master "https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng" "xiaoqingfeng" homeredirect luci-app-homeredirect

git_sparse_clone master "https://github.com/coolsnowwolf/packages" "leanpkg" net/miniupnpd net/mwan3 multimedia/UnblockNeteaseMusic-Go \
multimedia/UnblockNeteaseMusic net/amule net/antileech net/baidupcs-web net/frp multimedia/gmediarender net/go-aliyundrive-webdav \
net/qBittorrent-static net/qBittorrent net/transmission net/phtunnel libs/qtbase libs/qttools libs/rblibtorrent \
net/uugamebooster net/verysync net/vlmcsd net/dnsforwarder net/nps net/tcpping net/netatalk net/pgyvpn net/n2n
mv -f miniupnpd miniupnpd-iptables

git_sparse_clone master "https://github.com/immortalwrt/packages" "immpkgs" net/mwol \
net/sub-web net/dnsproxy net/haproxy net/v2raya net/cdnspeedtest net/keepalived \
net/subconverter net/ngrokc net/oscam net/njitclient net/scutclient net/gost net/gowebdav \
libs/jpcre2 libs/wxbase libs/rapidjson libs/libcron libs/quickjspp libs/toml11 \
utils/cpulimit utils/filebrowser utils/cups net/udp2raw net/msd_lite net/xfrpc net/bitsrunlogin-go \
utils/phicomm-k3screenctrl net/apinger net/basicstation libs/sx1302_hal

git_sparse_clone master "https://github.com/immortalwrt/immortalwrt" "immortal" package/kernel/rtl88x2bu \
package/kernel/r8168 package/kernel/rtl8821cu package/kernel/rtl8189es package/emortal/autocore package/emortal/automount \
package/utils/mhz
#package/network/utils/fullconenat package/network/utils/fullconenat-nft \
#package/network/utils/nftables  package/libs/libnftnl \
#package/network/config/firewall package/network/config/firewall4

git_sparse_clone master "https://github.com/coolsnowwolf/luci" "leluci" applications libs/luci-lib-fs
mv -f applications luciapp

git_sparse_clone master "https://github.com/immortalwrt/luci" "immluci" applications protocols/luci-proto-minieap
mv -n applications/* luciapp/; rm -rf applications

git_sparse_clone master "https://github.com/coolsnowwolf/lede" "leanlede" package/lean package/network/services/shellsync package/network/services/e2guardian
mv -n lean/* luciapp/; rm -rf lean
rm -rf luciapp/default-settings

mv -n luciapp/* ./ ; rm -Rf luciapp
#mv -n openwrt-passwall/* ./ ; rm -Rf openwrt-passwall
mv -n openwrt-package/* ./ ; rm -Rf openwrt-package

rm -rf luci-app-samba
rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
#删除没有依赖的包
rm -rf luci-app-noddos
#移动luci-base、luci-mod-status、luci-mod-system到A-model文件夹
mkdir A-model
mv -f luci-base A-model/luci-base
mv -f luci-mod-status A-model/luci-mod-status
mv -f luci-mod-system A-model/luci-mod-system
mv -f luci-app-samba4 A-model/luci-app-samba4
#mv -f nftables A-model/nftables
#mv -f libnftnl A-model/libnftnl
#mv -f firewall A-model/firewall
#mv -f firewall4 A-model/firewall4
#mv -f luci-app-firewall A-model/luci-app-firewall
#mv -f 952-net-conntrack-events-support-multiple-registrant.patch .github/diy/target/linux/generic/hack-5.10

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?2. Clash For OpenWRT?3. Applications?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
-e 's/ca-certificates/ca-bundle/' \
*/Makefile

sed -i 's/luci-lib-ipkg/luci-base/g' luci-app-store/Makefile
sed -i "/minisign:minisign/d" luci-app-dnscrypt-proxy2/Makefile
#sed -i 's/+dockerd/+dockerd +cgroupfs-mount/' luci-app-docker*/Makefile
#sed -i '$i /etc/init.d/dockerd restart &' luci-app-docker*/root/etc/uci-defaults/*
sed -i 's/+libcap /+libcap +libcap-bin /' luci-app-openclash/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-argon/' luci-app-argon-config/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-design/' luci-app-design-config/Makefile
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-argonne/' luci-app-argonne-config/Makefile
sed -i 's/ +uhttpd-mod-ubus//' luci-app-packet-capture/Makefile
sed -i 's/	ip.neighbors/	luci.ip.neighbors/' luci-app-wifidog/luasrc/model/cbi/wifidog/wifidog_cfg.lua
sed -i -e 's/nas/services/g' -e 's/NAS/Services/g' $(grep -rl 'nas\|NAS' luci-app-fileassistant)
#find -type f -name Makefile -exec sed -ri  's#mosdns[-_]neo#mosdns#g' {} \;

rm -rf luci-app-adguardhome/po/zh_Hans
cp -Rf luci-app-adguardhome/po/zh-cn luci-app-adguardhome/po/zh_Hans

rm -rf luci-app-wxedge/po/zh_Hans
cp -Rf luci-app-wxedge/po/zh-cn luci-app-wxedge/po/zh_Hans
rm -rf luci-app-wifischedule/po/zh_Hans
cp -Rf luci-app-wifischedule/po/zh-cn luci-app-wifischedule/po/zh_Hans
rm -rf luci-app-minidlna/po/zh_Hans
cp -Rf luci-app-minidlna/po/zh-cn luci-app-minidlna/po/zh_Hans
cp -Rf luci-app-wrtbwmon/po/zh_Hans luci-app-wrtbwmon/po/zh-cn

#bash diy/create_acl_for_luci.sh -a >/dev/null 2>&1
#bash diy/convert_translation.sh -a >/dev/null 2>&1

#rm -rf create_acl_for_luci.err & rm -rf create_acl_for_luci.ok
#rm -rf create_acl_for_luci.warn

exit 0
