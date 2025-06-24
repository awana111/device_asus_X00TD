#!/bin/bash

export TZ="Asia/Jakarta"

# Clone kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b repart2 kernel/asus/sdm660

# Clone common tree
rm -rf device/asus/sdm660-common
git clone https://github.com/Kneba/device_asus_sdm660-common -b newpart device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --single-branch https://github.com/Kneba/proprietary_vendor_asus -b newpart vendor/asus

# Clone keys
rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

export BUILD_USERNAME="queen"
export BUILD_USER="queen"
