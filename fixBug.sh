pwd
ls
cd openwrt
pwd
ls
ls feeds/packages
ls feeds/packages/utils/xfsprogs
cat feeds/packages/utils/xfsprogs/Makefile

###临时修复阿里云webdav
#sed -i 's/stripped/release/g' feeds/packages/multimedia/aliyundrive-webdav/Makefile
echo 'cat xfsprogs makefile content'
cat feeds/packages/utils/xfsprogs/Makefile
sed -i 's/TARGET_CFLAGS += -DHAVE_MAP_SYNC/TARGET_CFLAGS += -DHAVE_MAP_SYNC -D_LARGEFILE64_SOURCE/' feeds/packages/utils/xfsprogs/Makefile

echo 'fix bug done'
