## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := MT2L03

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/MT2L03/device_MT2L03.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := MT2L03
PRODUCT_NAME := cm_MT2L03
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MT2L03
PRODUCT_MANUFACTURER := huawei
