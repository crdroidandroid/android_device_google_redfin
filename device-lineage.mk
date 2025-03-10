#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/redbull/device-lineage.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/redfin/overlay-lineage

# For whatever reason redfin needs this for viper. No clue why as of now
DISABLE_ARTIFACT_PATH_REQUIREMENTS += true

# CHRE
$(call soong_config_set,chre,chre_daemon_dsp_library,//vendor/google/redfin:libadsprpc)

# PowerShare
include hardware/google/pixel/powershare/device.mk

# wireless_charger HAL service
include device/google/redfin/wireless_charger/wireless_charger.mk
