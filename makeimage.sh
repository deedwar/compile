#LOCAL_PATH := $(call my-dir)
#cp ~/github/kernel/evolve-1.8/arch/arm/boot/zImage ./tools
#MKELF := ./tools/mkelf.py
#RPM := ./tools/RPM.bin
#RECOVERY := ./tools/combinedroot.fs
#ZIMAGE := ~/github/kernel/evolve-1.8/arch/arm/boot/zImage

rm ./boot.img
#Old Kernel Build
#python ./tools/mkelf.py -o ./boot.img ~/github/kernel/evolve-1.14/arch/arm/boot/zImage@0x40208000 ./tools/combinedroot.fs@0x41500000,ramdisk ./tools/RPM.bin@0x20000,rpm
#New Kernel Make
python ./tools/mkelf.py -o ./boot.img ~/github/kernel/evolve-2.1/arch/arm/boot/zImage@0x40208000 ./tools/combinedroot.fs@0x41500000,ramdisk ./tools/RPM.bin@0x20000,rpm
