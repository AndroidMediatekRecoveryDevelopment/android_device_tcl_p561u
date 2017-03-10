# Release name
PRODUCT_RELEASE_NAME := p561u

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/tcl/p561u/device_p561u.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p561u
PRODUCT_NAME := cm_p561u
PRODUCT_BRAND := tcl
PRODUCT_MODEL := p561u
PRODUCT_MANUFACTURER := tcl
