# BUILDING

repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh
rm -rf vendor/xiaomi/sm4635-common
rm -rf device/xiaomi/sm4635-common
rm -rf vendor/xiaomi/warm
rm -rf device/xiaomi/warm
rm -rf device/xiaomi/warm-kernel
rm -rf hardware/xiaomi
rm -rf hardware/qcom-caf/common
git clone https://github.com/realzarakinyu/android_device_xiaomi_warm device/xiaomi/warm
git clone https://github.com/realzarakinyu/android_vendor_xiaomi_warm vendor/xiaomi/warm
git clone https://github.com/realzarakinyu/android_vendor_xiaomi_sm4635-common vendor/xiaomi/sm4635-common
git clone https://github.com/realzarakinyu/android_device_xiaomi_sm4635-common device/xiaomi/sm4635-common
git clone https://github.com/realzarakinyu/android_device_xiaomi_warm-kernel device/xiaomi/warm-kernel
git clone https://github.com/realzarakinyu/android_hardware_qcom-caf_common -b lineage-23.0 hardware/qcom-caf/common
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
source build/envsetup.sh
lunch lineage_warm-bp3a-userdebug
mka bacon
