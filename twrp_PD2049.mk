#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2049 device
$(call inherit-product, device/vivo/PD2049/device.mk)

PRODUCT_DEVICE := PD2049
PRODUCT_NAME := twrp_PD2049
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2049A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 13 TP1A.220624.014 eng.compil.20230216.221019 release-keys"

BUILD_FINGERPRINT := vivo/PD2049/PD2049:13/TP1A.220624.014/compiler02162210:user/release-keys
