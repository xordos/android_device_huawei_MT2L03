
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/MT2L03/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MT2L03
TARGET_NO_BOOTLOADER := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true


BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt device/huawei/MT2L03/prebuilt/dt.img
BOARD_KERNEL_SEPARATED_DT := true

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6442450944
BOARD_FLASH_BLOCK_SIZE := 512

TARGET_PREBUILT_KERNEL := device/huawei/MT2L03/prebuilt/kernel

TARGET_RECOVERY_FSTAB := device/huawei/MT2L03/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/huawei/MT2L03/recovery/init.rc

BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_MTP_DEVICE := /dev/mtp_usb
#BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file
#TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1

# For 4.3+
HAVE_SELINUX := true

# TWRP Specific  //also for CWM
DEVICE_RESOLUTION := 720x1280

#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/HWUserData"
TW_INTERNAL_STORAGE_MOUNT_POINT := "HWUserData"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
# Debug mode
#ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
##for recovery
#ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

