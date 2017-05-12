#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from aio_row device
$(call inherit-product, device/lenovo/aio_row/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/cm/conf*/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aio_row
PRODUCT_NAME := lineage_aio_row
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := A7000-a
PRODUCT_MANUFACTURER := Lenovo

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

$(call inherit-product-if-exists, vendor/lenovo/aio_row/aio_row-vendor.mk)
