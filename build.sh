# BUILDING

# Repo init
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh
echo "======= Repo Syncing, This going to take forever, so just go touch grass ======"

# remove old dir
rm -rf vendor/xiaomi/sm4635-common
rm -rf device/xiaomi/sm4635-common
rm -rf vendor/xiaomi/warm
rm -rf device/xiaomi/warm
rm -rf device/xiaomi/warm-kernel
rm -rf hardware/xiaomi
rm -rf hardware/qcom-caf/common
rm -rf build/soong/fsgen
echo "======= Removed Old Directories ======"

# Trees cloning
git clone https://github.com/xiaomi-warm-devs/android_device_xiaomi_warm -b lineage-23.0 device/xiaomi/warm
git clone https://github.com/xiaomi-warm-devs/android_vendor_xiaomi_warm -b lineage-23.0 vendor/xiaomi/warm
git clone https://github.com/realzarakinyu/android_device_xiaomi_sm4635-common -b test device/xiaomi/sm4635-common
git clone https://github.com/xiaomi-warm-devs/android_vendor_xiaomi_sm4635-common -b lineage-23.0 vendor/xiaomi/sm4635-common
git clone https://github.com/xiaomi-warm-devs/android_device_xiaomi_warm-kernel -b lineage-23.0 device/xiaomi/warm-kernel
git clone https://github.com/xiaomi-warm-devs/android_hardware_qcom-caf_common -b lineage-23.0 hardware/qcom-caf/common
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
echo "====================================================================================================================="
echo "=========================================== Trees Cloned Succesfully ================================================"
echo "====================================================================================================================="

# Export
export BUILD_USERNAME=ZaraKinYu
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# build
source build/envsetup.sh
lunch lineage_warm-bp2a-userdebug
mka bacon
echo "======= Build Done Successfully ======"
