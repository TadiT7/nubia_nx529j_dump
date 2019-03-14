#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14270464:2b19992b888a1e2a7a862efe85a3bad2d5b5a4b5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10135552:24fbd879e28e98efbcd2f080b57b8eecb9de52c8 EMMC:/dev/block/bootdevice/by-name/recovery 2b19992b888a1e2a7a862efe85a3bad2d5b5a4b5 14270464 24fbd879e28e98efbcd2f080b57b8eecb9de52c8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
