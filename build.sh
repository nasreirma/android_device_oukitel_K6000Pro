#!/bin/sh
cd ../../../
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"
./device/oukitel/K6000Pro/patches/install.sh
. build/envsetup.sh
lunch lineage_K6000Pro-userdebug && make bacon -j10
