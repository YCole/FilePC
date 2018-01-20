ifeq ($(strip $(TARGET_USES_QTIC_FILE_EXPLORER)),true)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v13 \
	android-support-v4 \
	android.support.annotation_all \
	
 
LOCAL_MODULE_TAGS := optional eng

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := FileExplorer

LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(wildcard vendor/qcom/platform/frameworks/support/featurebar/apply_featurebar.mk)
include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := android.support.annotation_all:libs/android.support.annotation_all.jar										
include $(BUILD_MULTI_PREBUILT)
 
endif