#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:ccfff6aec358545229854a9dfc5df5043fe4b3b5; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:9a662a3d8b3c785d25770abae03e76bd5cbeff2a EMMC:/dev/block/platform/bootdevice/by-name/recovery ccfff6aec358545229854a9dfc5df5043fe4b3b5 67108864 9a662a3d8b3c785d25770abae03e76bd5cbeff2a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
