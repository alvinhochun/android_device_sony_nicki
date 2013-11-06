#
# Copyright (C) 2010 The Android Open Source Project
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

ifeq ($(TARGET_PREBUILT_KERNEL),)
  LOCAL_KERNEL := device/sony/nicki/kernel
else
  LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_AAPT_CONFIG := normal mdpi

DEVICE_PACKAGE_OVERLAYS := \
    device/sony/nicki/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# Copy kernel to output
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/sony/nicki/fstab.qcom:root/fstab.qcom

PRODUCT_COPY_FILES += \
    device/sony/nicki/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES := \
    make_ext4fs

PRODUCT_CHARACTERISTICS := phone

