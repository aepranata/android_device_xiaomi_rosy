#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common RiceDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

RICE_CHIPSET := MSM8953
RICE_MAINTAINER := "A³-Project"
RICE_PACKAGE_TYPE := "VANILLA"
SUSHI_BOOTANIMATION := 720
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := false
TARGET_KERNEL_OPTIONAL_LD := true
TARGET_USE_PIXEL_FINGERPRINT := false
WITH_GMS := false
TARGET_OPTOUT_GOOGLE_TELEPHONY := false
ifneq (,$(WITH_GMS))
    TARGET_CORE_GMS := true
    TARGET_CORE_GMS_EXTRAS := false
endif

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_rosy
PRODUCT_DEVICE := rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true

# GApps
TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := rosy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosy-user 7.1.2 N2G47H V9.2.3.0.NDAMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/rosy/rosy:7.1.2/N2G47H/V9.2.3.0.NDAMIEK:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    persist.sys.fw.bg_apps_limit=96 \
#    ro.lmk.kill_heaviest_task=true \
#    ro.lmk.kill_timeout_ms=100 \
#    ro.lmk.thrashing_limit=30 \
#    ro.lmk.thrashing_limit_decay=5 \
#    ro.lmk.swap_free_low_percentage=10 \
#    ro.lmk.psi_partial_stall_ms=70 \
#    ro.lmk.psi_complete_stall_ms=70 \
#    ro.lmk.use_new_strategy=true \
#    ro.lmk.psi_scrit_complete_stall_ms=75 \
#    ro.lmk.nstrat_wmark_boost_factor=4 \
#    ro.lmk.enable_watermark_check=true \
#    ro.lmk.enable_userspace_lmk=true \
#    ro.lmk.super_critical=701 \
#    ro.lmk.direct_reclaim_pressure=45 \
#    ro.lmk.reclaim_scan_threshold=0 \
#    persist.sys.appcompact.enable_app_compact=false \
#    persist.sys.appcompact.full_compact_type=2 \
#    persist.sys.appcompact.some_compact_type=4 \
#    persist.sys.appcompact.compact_throttle_somesome=5000 \
#    persist.sys.appcompact.compact_throttle_somefull=10000 \
#    persist.sys.appcompact.compact_throttle_fullsome=500 \
#    persist.sys.appcompact.compact_throttle_fullfull=10000 \
#    persist.sys.appcompact.compact_throttle_bfgs=600000 \
#    persist.sys.appcompact.compact_throttle_persistent=600000 \
#    persist.sys.appcompact.rss_throttle_kb=12000 \
#    persist.sys.appcompact.delta_rss_throttle_kb=8000 \
#    persist.sys.perf.topAppRenderThreadBoost.enable=false
