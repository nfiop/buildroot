#!/bin/sh

./rebuild-uboot.sh
make linux-rebuild
make
