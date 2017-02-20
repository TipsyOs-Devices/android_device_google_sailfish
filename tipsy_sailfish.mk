# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit Carbon product configuration
$(call inherit-product, vendor/tipsy/config/common.mk)

# Inherit some common Tipsy stuff.
$(call inherit-product, vendor/tipsy/config/common_full_phone.mk)

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-tipsy.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tipsy_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.1/NOF26W/3637559:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.1 NOF26W 3637559 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
