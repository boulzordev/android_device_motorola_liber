# Copyright (C) 2021 The OmniROM Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

PRODUCT_EXTRA_VNDK_VERSIONS := 29

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

$(call inherit-product, device/motorola/sm6150_common/omni-sm6150_common.mk)
$(call inherit-product, device/motorola/liber/device.mk)

PRODUCT_SHIPPING_API_LEVEL := 29

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := motorola one fusion +

TARGET_DEVICE := MotoOneFusion+
PRODUCT_SYSTEM_NAME := MotoOneFusion+

VENDOR_RELEASE := 10/QPIS30.73-33-2/90024:user/release-keys
BUILD_FINGERPRINT := motorola/liber_retail/liber:$(VENDOR_RELEASE)
OMNI_BUILD_FINGERPRINT := motorola/liber_retail/liber:$(VENDOR_RELEASE)
OMNI_PRIVATE_BUILD_DESC := "'liber_retail-user 10QPIS30.73-33-2 90024 release-keys'"

PLATFORM_SECURITY_PATCH_OVERRIDE := 2021-01-01

TARGET_VENDOR := motorola

DEVICE_PACKAGE_OVERLAYS += device/motorola/liber/overlay/device

PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_gl_backpressure=0 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1
