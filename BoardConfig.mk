LOCAL_PATH := device/tcl/p561u

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/tcl/p561u/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := p561u
TARGET_OTA_ASSERT_DEVICE := p561u_Base

# Platform
TARGET_BOARD_PLATFORM := mt6735

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# CFLAGS
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#COMMON_GLOBAL_CPPFLAGS += -DNO_SECURE_DISCARD
#WITH_DEXPREOPT := true

# ARGUMENTS
BUILD_NUMBER := $(shell date +%s)
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# PARTITIONS
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013265920
#BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_HAS_LARGE_FILESYSTEM := true

# USB OTG and External Sdcard
TARGET_USES_EXFAT := true
TARGET_USES_NTFS := true

# GRAPHICS
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# RECOVERY
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
DEVICE_SCREEN_WIDTH := 480
DEVICE_SCREEN_HEIGHT := 854
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

RECOVERY_VARIANT := carliv

#ifneq ($(RECOVERY_VARIANT),twrp)
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/recovery.fstab
#endif

# CARLIV
#ifeq ($(RECOVERY_VARIANT),carliv)
VIBRATOR_TIMEOUT_FILE := /sys/devices/virtual/timed_output/vibrator/enable
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_16x35.h\"
DEVICE_RESOLUTION := 480x854
BOARD_INCLUDE_CRYPTO := true
BOARD_HAS_MTK_CPU := true
#endif
# TWRP
#ifeq ($(RECOVERY_VARIANT),twrp)
#TW_NO_REBOOT_BOOTLOADER := true
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/twrp.fstab
#TW_THEME := portrait_hdpi
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_INTERNAL_STORAGE_PATH := "/data/media"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_MAX_BRIGHTNESS := 255
#BOARD_SUPPRESS_SECURE_ERASE := true
#TW_INCLUDE_CRYPTO := true
#endif
