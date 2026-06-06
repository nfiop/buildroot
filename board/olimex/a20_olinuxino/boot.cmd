setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p2 rootwait ${extra}

# load from /boot partition zImage and its dtb
fatload mmc 0:1 0x49000000 /${fdtfile}
fatload mmc 0:1 0x46000000 /zImage
env set fdt_high ffffffff

bootz 0x46000000 - 0x49000000
