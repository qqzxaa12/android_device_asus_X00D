# Hacks
WITHOUT_CHECK_API := true
USE_SQUASHFS := 0

# Main
DEVICE_PATH := device/asus/X00D

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8937

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true

# Charger
WITH_LINEAGE_CHARGER := false

# Cpusets
ENABLE_CPUSETS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw

# Display
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_ANDROID_FILESYSTEM_CONFIG_H := $(DEVICE_PATH)/android_filesystem_config.h

# Hardware
BOARD_HARDWARE_CLASS += \
    $(DEVICE_PATH)/lineagehw

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml
    
# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_X00D
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_X00D
TARGET_LIBINIT_DEFINES_FILE := device/asus/X00D/init/init_X00D.cpp

# Kernel

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

BOARD_KERNEL_CMDLINE := \
    androidboot.bootdevice=7824900.sdhci \
    androidboot.console=ttyHSL0 \
    androidboot.hardware=qcom \
    console=ttyHSL0,115200,n8 \
    earlycon=msm_hsl_uart,0x78B0000 \
    ehci-hcd.park=3 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    user_debug=30 \
    vmalloc=400M \
    androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 2048

KERNEL_TOOLCHAIN := $(PWD)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-

TARGET_KERNEL_SOURCE := kernel/asus/msm8937
TARGET_KERNEL_CONFIG := X00D_defconfig
TARGET_KERNEL_VERSION := 3.18

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

TARGET_LDPRELOAD := libNimsWrap.so

# Keymaster
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Partitions
BOARD_SUPPRESS_SECURE_ERASE := true

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    32768 * 1024 mmcblk0p58
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728      #   131072 * 1024 mmcblk0p65
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864    #    65536 * 1024 mmcblk0p59
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4026531840    #  3932160 * 1024 mmcblk0p66
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57583582208 # 56233967 * 1024 mmcblk0p67

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505
TARGET_BOARD_SUFFIX := _64

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_USE_SDCLANG := true

# Recovery
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# SELinux
include device/qcom/sepolicy/sepolicy.mk

# Sensor
USE_SENSOR_MULTI_HAL := true

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_NO_EXFAT_FUSE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true

TW_BRIGHTNESS_PATH := "/sys/devices/soc/1a00000.qcom\x2mdss_mdp/1a00000.qcom\x2mdss_mdp:qcom\x2mdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_RECOVERY_DEVICE_MODULES := \
    libbinder \
    libgui \
    libui \
    qseecomd

TW_RECOVERY_ADDITIONAL_RELINK_FILES := \
    $(OUT_DIR)/target/product/X00D/system/lib64/libbinder.so \
    $(OUT_DIR)/target/product/X00D/system/lib64/libgui.so \
    $(OUT_DIR)/target/product/X00D/system/lib64/libui.so \
    $(OUT_DIR)/target/product/X00D/system/bin/qseecomd

TARGET_UNIFIED_DEVICE := true
TARGET_SYSTEM_PROP := device/asus/X00D/system.prop

# Telephony
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
