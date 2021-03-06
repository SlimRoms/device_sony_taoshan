# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Bootanimation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit AOSP device config
$(call inherit-product, device/sony/taoshan/full_taoshan.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit Slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C2105 BUILD_FINGERPRINT=Sony/C2105/C2105:4.2.2/15.3.A.1.17/Android.1016:user/release-keys PRIVATE_BUILD_DESC="C2105-user 4.2.2 JDQ39 Android.1016 test-keys"

# Overrides for CM
PRODUCT_DEVICE := taoshan
PRODUCT_NAME := slim_taoshan

# Release name
PRODUCT_RELEASE_NAME := XperiaL
