# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

# libjpeg
include $(CLEAR_VARS)
LOCAL_MODULE    := prebuilt-libjpeg
LOCAL_SRC_FILES := external/lib/libjpeg.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := ImageProc
LOCAL_SRC_FILES := ImageProc.c
LOCAL_LDLIBS    := -llog -ljnigraphics
LOCAL_SHARED_LIBRARIES := prebuilt-libjpeg
LOCAL_C_INCLUDES       := external/include jni/external/include

include $(BUILD_SHARED_LIBRARY)