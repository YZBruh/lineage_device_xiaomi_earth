#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from earth device
$(call inherit-product, device/xiaomi/earth/device.mk)

PRODUCT_DEVICE := earth
PRODUCT_NAME := lineage_earth
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_cn-user 13 TP1A.220624.014 V14.0.1.0.TCVCNXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_earth/earth:12/TP1A.220624.014/V14.0.1.0.TCVCNXM:user/release-keys
