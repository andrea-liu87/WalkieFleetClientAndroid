LOCAL_PATH := $(call my-dir)
AbsolutePath := $(abspath $(call my-dir))
#$(call __ndk_warning,Module $(LOCAL_MODULE) AbsolutePath := $(AbsolutePath))

#-------------------------------------------------------------------------------------------------------------------------------------------------

include $(CLEAR_VARS)

OPUS := $(AbsolutePath)/src/main/jni/Opus

LOCAL_MODULE    := opus_wrapper

LOCAL_SRC_FILES := $(OPUS)/Opus.cpp

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

LOCAL_C_INCLUDES += $(OPUS)/Include
LOCAL_CFLAGS = -D__STDC_CONSTANT_MACROS -I$(OPUS)/Include

include $(BUILD_SHARED_LIBRARY)

#-----------------------------------------------------------------------------