ifeq ($(BOARD_DISPLAY_HAL),)
    BOARD_DISPLAY_HAL := hardware/qcom-caf/sm6225/display
endif

# Display product definitions
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    gralloc.$(TARGET_BOARD_PLATFORM) \
    lights.$(TARGET_BOARD_PLATFORM) \
    hwcomposer.$(TARGET_BOARD_PLATFORM) \
    libsdmcore \
    libsdmutils \
    libqdMetaData \
    libqdMetaData.system \
    libdisplayconfig \
    libgralloc.qti \
    libdisplayconfig.qti \
    libdisplayconfig.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor \
    init.qti.display_boot.sh \
    init.qti.display_boot.rc \
    modetest

ifneq ($(TARGET_HAS_LOW_RAM),true)
#QDCM calibration xml file for 2k panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_nt35597_cmd_mode_dsi_truly_panel_with_DSC.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_nt35597_cmd_mode_dsi_truly_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_nt35597_cmd_mode_dsi_truly_panel_with_DSC.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_nt35597_video_mode_dsi_truly_panel_with_DSC.xml
#QDCM calibration xml file for 4k panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_Sharp_4k_cmd_mode_dsc_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_4k_cmd_mode_dsc_dsi_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_Sharp_4k_cmd_mode_dsc_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_4k_video_mode_dsc_dsi_panel.xml
#QDCM calibration xml file for amoled panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_sw43404_amoled_cmd_mode_dsi_boe_panel_with_DSC.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_sw43404_amoled_cmd_mode_dsi_boe_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_sw43404_amoled_cmd_mode_dsi_boe_panel_with_DSC.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_sw43404_amoled_video_mode_dsi_boe_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_sw43404_amoled_cmd_mode_dsi_boe_panel_with_DSC.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_sw43404_amoled_boe_fhd+_panel_with_DSC.xml
#QDCM calibration xml file for dual panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_sharp_1080p_cmd_mode_dsi_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_nt35695b_truly_fhd_command_mode_dsi_panel.xml
#QDCM calibration xml file for Sharp fhd panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_fhd_cmd_mode_qsync_dsi_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_fhd_video_mode_qsync_dsi_panel.xml
#QDCM calibration xml file for Sharp 2k panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_2k_cmd_mode_qsync_dsi_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_Sharp_2k_video_mode_qsync_dsi_panel.xml
#QDCM calibration xml file for r66451 amoled panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_cmd_mode_dsi_visionox_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_cmd_mode_dsi_visionox_60HZ_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_cmd_mode_dsi_visionox_90HZ_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_cmd_mode_dsi_visionox_120HZ_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_video_mode_dsi_visionox_60HZ_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_video_mode_dsi_visionox_90HZ_panel_with_DSC.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_r66451_amoled_video_mode_dsi_visionox_120HZ_panel_with_DSC.xml
#QDCM calibration xml file for rm69299 amoled fhd+ panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_rm69299_amoled_fhd+_video_mode_dsi_visionox_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_rm69299_amoled_fhd+_cmd_mode_dsi_visionox_panel.xml
#QDCM calibration xml file for nt36525 truly panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_bengal_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_nt36525_video_mode_dsi_truly_panel.xml
#QDCM calibration xml file for nt36672e LCD video mode single dsi with DSC panel.
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_bengal_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_nt36672e_90Hz_fhd_plus_video_mode_panel_with_DSC.xml
endif
#QDCM calibration xml file for td4330 panel
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_bengal_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_td4330_v2_cmd_mode_dsi_truly_panel.xml
PRODUCT_COPY_FILES += $(BOARD_DISPLAY_HAL)/config/qdcm_calib_data_bengal_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_td4330_v2_video_mode_dsi_truly_panel.xml

PRODUCT_VENDOR_PROPERTIES += \
    persist.demo.hdmirotationlock=false \
    persist.sys.sf.color_saturation=1.0 \
    persist.sys.sf.color_mode=9 \
    debug.sf.hw=0 \
    debug.egl.hw=0 \
    debug.sf.enable_hwc_vds=0 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.high_fps_late_app_phase_offset_ns=1000000 \
    debug.mdpcomp.logs=0 \
    vendor.display.vds_allow_hwc=1 \
    vendor.gralloc.disable_ubwc=0 \
    vendor.display.disable_scaler=0 \
    vendor.display.disable_excl_rect=0 \
    vendor.display.disable_excl_rect_partial_fb=1 \
    vendor.display.comp_mask=0 \
    vendor.display.enable_posted_start_dyn=1 \
    vendor.display.enable_optimize_refresh=1 \
    vendor.display.use_smooth_motion=1 \
    vendor.display.enable_camera_smooth=1 \
    vendor.display.enable_allow_idle_fallback=1 \
    vendor.display.disable_idle_time_video=1 \
    vendor.display.disable_idle_time_hdr=1 \
    debug.sf.predict_hwc_composition_strategy=0

# Enable offline rotator for Bengal, Monaco, Khaje, Trinket.
ifneq ($(filter bengal monaco khaje trinket, $(TARGET_BOARD_PLATFORM)),$(TARGET_BOARD_PLATFORM))
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_offline_rotator=1
else
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_rotator_ubwc=1 \
    vendor.display.normal_noc_efficiency_factor=0.85 \
    vendor.display.camera_noc_efficiency_factor=0.70 \
    vendor.display.disable_layer_stitch=0 \
    vendor.display.secure_preview_buffer_format=420_sp \
    vendor.gralloc.secure_preview_buffer_format=420_sp \
    debug.sf.enable_advanced_sf_phase_offset=1 \
    debug.sf.high_fps_late_sf_phase_offset_ns=-5000000 \
    debug.sf.high_fps_early_phase_offset_ns=-5000000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=-5000000
endif

ifeq ($(TARGET_BOARD_PLATFORM),monaco)
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_layer_stitch=1
endif

ifeq ($(TARGET_BOARD_PLATFORM),kona)
PRODUCT_VENDOR_PROPERTIES += \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.enable_advanced_sf_phase_offset=1 \
    debug.sf.high_fps_late_sf_phase_offset_ns=-4000000 \
    debug.sf.high_fps_early_phase_offset_ns=-4000000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=-4000000
endif

ifeq ($(TARGET_BOARD_PLATFORM),bengal)
PRODUCT_VENDOR_PROPERTIES += \
    debug.sf.enable_gl_backpressure=0
endif

ifeq ($(TARGET_BOARD_PLATFORM),lito)
PRODUCT_VENDOR_PROPERTIES += \
    debug.sf.high_fps_late_sf_phase_offset_ns=-4000000 \
    debug.sf.high_fps_early_phase_offset_ns=-4000000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=-4000000 \
    debug.sf.perf_fps_late_sf_phase_offset_ns=-5000000 \
    debug.sf.perf_fps_early_phase_offset_ns=-5000000 \
    debug.sf.perf_fps_early_gl_phase_offset_ns=-5000000 \
    debug.sf.enable_advanced_sf_phase_offset=1
endif

ifeq ($(TARGET_FWK_SUPPORTS_FULL_VALUEADDS), true)
  ifeq ($(TARGET_BOARD_PLATFORM),lito)
  PRODUCT_VENDOR_PROPERTIES += \
      vendor.display.enable_perf_hint_large_comp_cycle=1
  endif
endif

#Set WCG properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.has_wide_color_display=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.has_HDR_display=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.use_color_management=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.wcg_composition_dataspace=143261696
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.protected_contents=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.set_touch_timer_ms=200
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.force_hwc_copy_for_virtual_displays=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.max_virtual_display_dimension=4096
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.game_default_frame_rate_override=60

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
# Recovery is enabled, logging is enabled
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_hw_recovery_dump=0
else
# Recovery is enabled, logging is disabled
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_hw_recovery_dump=1
endif

ifeq ($(TARGET_HAS_QTI_OPTIMIZATIONS), true)
PRODUCT_VENDOR_PROPERTIES += \
    vendor.display.disable_cache_manager=1 \
    debug.disable_screen_decorations=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=2
else
PRODUCT_VENDOR_PROPERTIES += \
    debug.disable_screen_decorations=0
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3
endif

# Enable power async mode
PRODUCT_VENDOR_PROPERTIES +=  vendor.display.enable_async_powermode=1
# Soong Namespace
SOONG_CONFIG_NAMESPACES += qtidisplay
# Soong Keys
SOONG_CONFIG_qtidisplay := drmpp headless llvmsa gralloc4 displayconfig_enabled default var1 var2 var3

# Soong Values
SOONG_CONFIG_qtidisplay_drmpp := true
SOONG_CONFIG_qtidisplay_headless := false
SOONG_CONFIG_qtidisplay_llvmsa := false
SOONG_CONFIG_qtidisplay_gralloc4 := true

SOONG_CONFIG_qtidisplay_displayconfig_enabled := false
SOONG_CONFIG_qtidisplay_default := true
SOONG_CONFIG_qtidisplay_var1 := false
SOONG_CONFIG_qtidisplay_var2 := false
SOONG_CONFIG_qtidisplay_var3 := false

ifeq ($(call is-vendor-board-platform,QCOM),true)
    SOONG_CONFIG_qtidisplay_displayconfig_enabled := true
endif

# Techpack values

QMAA_ENABLED_HAL_MODULES += display
ifeq ($(TARGET_USES_QMAA),true)
    ifneq ($(TARGET_USES_QMAA_OVERRIDE_DISPLAY),true)
        #QMAA Mode is enabled
        TARGET_IS_HEADLESS := true
    endif
endif

ifeq ($(TARGET_IS_HEADLESS), true)
    SOONG_CONFIG_qtidisplay_headless := true
    PRODUCT_VENDOR_PROPERTIES += \
        vendor.display.enable_null_display=1
else
    PRODUCT_VENDOR_PROPERTIES += \
            vendor.display.enable_null_display=0
    #Modules that shouldn't be enabled in QMAA go here
    PRODUCT_PACKAGES += libdrmutils
    PRODUCT_PACKAGES += libsdedrm
    PRODUCT_PACKAGES += libgpu_tonemapper
endif

# Properties using default value:
#    vendor.display.disable_hw_recovery=0
