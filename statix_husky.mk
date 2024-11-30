# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product, vendor/google/pixelparts/face/face.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
