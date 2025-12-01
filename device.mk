#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/gta4lve


PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    bootctrl.unisoc \
    bootctrl.unisoc.recovery \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_SHIPPING_API_LEVEL := 31  

TARGET_OTA_ASSERT_DEVICE := gta4lve

TARGET_COPY_OUT_VENDOR := vendor
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

TW_DEVICE_VERSION := DevCat3
TW_HAS_DOWNLOAD_MODE := true