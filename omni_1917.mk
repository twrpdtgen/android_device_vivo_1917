#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
z
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 1917 device
$(call inherit-product, device/vivo/1917/device.mk)

PRODUCT_DEVICE := 1917
PRODUCT_NAME := twrp_1917
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1917
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="1917-user 11 RP1A.200720.012 compiler0114111425 release-keys"

BUILD_FINGERPRINT := vivo/1917/1917:11/RP1A.200720.012/compiler0114111425:user/release-keys
