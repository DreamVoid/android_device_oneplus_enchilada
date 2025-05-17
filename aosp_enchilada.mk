#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2024 The AOSP Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk) # Optional: Uncomment if you need AOSP common stuff

# Inherit from enchilada device
$(call inherit-product, device/oneplus/enchilada/device.mk)

# Inherit some common PixelOS (PE-style, based on aston example) stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit some common Lineage stuff.
# $(call inherit-product, vendor/lineage/config/common_full_phone.mk) # Removed for AOSP

PRODUCT_NAME := aosp_enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# PRODUCT_BUILD_PROP_OVERRIDES += \
#     BuildDesc="OnePlus6-user 11   release-keys" \
#     BuildFingerprint=OnePlus/OnePlus6/OnePlus6:11/RKQ1.201217.002/2111252325:user/release-keys \
#     DeviceName=OnePlus6 \
#     DeviceProduct=OnePlus6 \
#     SystemDevice=OnePlus6 \
#     SystemName=OnePlus6
# Commented out LineageOS specific build overrides

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus6 \
    TARGET_PRODUCT=OnePlus6

# If you need to override build properties, do it here, for example:
# PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="aosp_enchilada-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) release-keys" \
#    BUILD_FINGERPRINT=AOSP/enchilada/enchilada:$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER):userdebug/release-keys

# If you want to mimic PE specific features, add them here, otherwise remove/comment out.
# For a generic AOSP, these are typically not needed unless desired.
# TARGET_BOOT_ANIMATION_RES := 1080
# TARGET_FACE_UNLOCK_SUPPORTED := true
# TARGET_SUPPORTS_GOOGLE_RECORDER := false
# TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
# TARGET_SUPPORTS_QUICK_TAP := true
# TARGET_USES_AOSP_RECOVERY := true
