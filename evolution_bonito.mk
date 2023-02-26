#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_IS_PIXEL := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

include device/google/bonito/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_NAME := evolution_bonito

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT==bonito \
    PRIVATE_BUILD_DESC="bonito-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:12/SP2A.220505.008/8782922:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
