# Rom source

repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

# CLoning
rm -rf vendor/xiaomi/warm
rm -rf device/xiaomi/warm
rm -rf device/xiaomi/warm-kernel
rm -rf hardware/xiaomi
rm -rf hardware/qcom-caf/common
git clone https://github.com/realzarakinyu/android_vendor_xiaomi_warm vendor/xiaomi/warm
git clone https://github.com/realzarakinyu/android_device_xiaomi_warm device/xiaomi/warm
git clone https://github.com/realzarakinyu/android_device_xiaomi_warm-kernel device/xiaomi/warm-kernel
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
git clone https://github.com/realzarakinyu/android_hardware_qcom-caf_common -b lineage-23.0 hardware/qcom-caf/common

# BUilding
source build/envsetup.sh
export BUILD_USERNAME=ZaraKinYu
export BUILD_HOSTNAME=ubuntu
lunch lineage_warm-bp2a-userdebug
mka bacon
