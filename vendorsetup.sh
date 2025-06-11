#!/bin/bash

export BUILD_USER="queen"
export TZ="Asia/Jakarta"

# Clone kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660

# Clone common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/Kneba/device_asus_sdm660-common -b 15 device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/Kneba/proprietary_vendor_asus -b 15 vendor/asus

# Clone vibrator
#rm -rf vendor/qcom/opensource/vibrator
#git clone --depth=1 https://github.com/electrolaboratory/android_vendor_qcom_opensource_vibrator -b lineage-22.2 vendor/qcom/opensource/vibrator

# Clone keys
rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
