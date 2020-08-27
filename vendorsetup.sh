#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

	export PLATFORM_VERSION="16.1.0"
	export PLATFORM_SECURITY_PATCH="2099-12-31"
	export TW_DEFAULT_LANGUAGE="en"
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export FOX_USE_UNZIP_BINARY=1
	# export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION="1"; # disabling dm-verity causes stability issues with some kernel 4.9 ROMs; but is needed for MIUI
	# export OF_DISABLE_FORCED_ENCRYPTION=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
	export OF_USE_MAGISKBOOT="1"
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI="1"
	export OF_NO_MIUI_OTA_VENDOR_BACKUP="1"
	export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"

	# OTA for custom ROMs
        export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
        export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

        # -- add settings for R11 --
        export FOX_R11=1
        export FOX_ADVANCED_SECURITY=1
        export OF_USE_TWRP_SAR_DETECT=1
        export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
        # -- end R11 settings --

	export OF_USE_GREEN_LED=0
	export OF_QUICK_BACKUP_LIST="/boot;/system;/data;/vendor;/persist_image;/splash;/recovery;/aboot;/modem;/sec;/efs1"
	export OF_MAINTAINER="MOCHI"
	export OF_TARGET_DEVICES="land,karate,santoni,riva,E,holland1"
	export TARGET_DEVICE_ALT="land,karate,santoni,riva,E,holland1"

	# let's log what are the build VARs that we used
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		export | grep "TW_" >> $FOX_BUILD_LOG_FILE
		export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
		export | grep "PLATFORM_" >> $FOX_BUILD_LOG_FILE
  	fi

add_lunch_combo omni_E-eng
