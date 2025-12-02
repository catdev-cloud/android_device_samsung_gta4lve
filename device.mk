#Copyright (C) 2025 The Android Open Source Project
#Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := device/samsung/gta4lve

#Recovery flags

TARGET_NO_RECOVERY := false
TARGET_RECOVERY_DEVICE_MODULES+= debuggerd

#Packages

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    bootctrl.unisoc \
    bootctrl.unisoc.recovery 

PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl \
    android.hardware.fastboot@1.0-service

#Dynamic partitions

PRODUCT_USE_DYNAMIC_PARTITIONS := true
AB_OTA_UPDATER:= true
AB_OTA_PARTITIONS:= boot system vendor product system_ext

#API level

PRODUCT_SHIPPING_API_LEVEL := 30

#Device assertion

TARGET_OTA_ASSERT_DEVICE := gta4lve

#Display

TARGET_COPY_OUT_VENDOR := vendor
TARGET_RECOVERY_PIXEL_FORMAT:= "RGBX_8888"

#TWRP Configuration 

TW_DEVICE_VERSION := DevCat3
TW_HAS_DOWNLOAD_MODE:= true
TW_THEME:= portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT:= true
TW_INCLUDE_CRYPTO:= false

#Fastbootd support

TW_HAS_FASTBOOTD := true
TW_SUPPORT_INPUT_1_2_HAPTICS:= true

#Debug

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD:= true
