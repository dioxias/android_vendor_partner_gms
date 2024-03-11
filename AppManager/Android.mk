LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-io.github.muntashirakon.AppManager.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := AppManager
LOCAL_SRC_FILES := AppManager.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES := privapp-permissions-io.github.muntashirakon.AppManager.xml
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)

