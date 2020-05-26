# Known issues
## Issue 1

```
rm -rf "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp"
mkdir -p /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/dummyroot
/opt/lichee/businesscard-linux/buildroot/output/host/bin/genimage --config /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/genimage.cfg --inputpath /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive --outputpath /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive --tmppath /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp --rootpath /opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/dummyroot --mcopy /opt/lichee/businesscard-linux/buildroot/output/host/bin/mcopy --mkdosfs /opt/lichee/businesscard-linux/buildroot/output/host/sbin/mkdosfs
INFO: cmd: "mkdir -p "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp"" (stderr):
INFO: cmd: "rm -rf "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp"/*" (stderr):
INFO: cmd: "mkdir -p "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive"" (stderr):
INFO: cmd: "mkdir -p "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp"" (stderr):
INFO: cmd: "cp -a "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/dummyroot" "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/tmp/root"" (stderr):
INFO: vfat(flashdrive.vfat): cmd: "dd if=/dev/zero of="/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/flashdrive.vfat" seek=2334720 count=0 bs=1 2>/dev/null" (stderr):
INFO: vfat(flashdrive.vfat): cmd: "/opt/lichee/businesscard-linux/buildroot/output/host/sbin/mkdosfs  '/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/flashdrive.vfat'" (stderr):
INFO: vfat(flashdrive.vfat): adding file 'loginLinux.bat' as 'loginLinux.bat' ...
INFO: vfat(flashdrive.vfat): cmd: "/opt/lichee/businesscard-linux/buildroot/output/host/bin/mcopy -bsp -i '/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/flashdrive.vfat' '/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/loginLinux.bat' '::'" (stderr):
Total number of sectors (4560) not a multiple of sectors per track (32)!
Add mtools_skip_check=1 to your .mtoolsrc file to skip this test
INFO: vfat(flashdrive.vfat): cmd: "rm -f "/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/flashdrive.vfat"" (stderr):
ERROR: vfat(flashdrive.vfat): failed to generate flashdrive.vfat
package/pkg-generic.mk:238: recipe for target '/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/.stamp_built' failed
make: *** [/opt/lichee/businesscard-linux/buildroot/output/build/businesscard-flashdrive/.stamp_built] Error 1
root@008f8b15e168:/opt/lichee/businesscard-linux/buildroot#
```

Try:
```
echo 'mtools_skip_check=1'>>~/.mtoolsrc
```