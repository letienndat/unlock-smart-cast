TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = screen-mirroring
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UnlockSmartCast

UnlockSmartCast_FILES = \
			Tweak.xm \
			Hooks/NSUserDefaultsHooks.xm

UnlockSmartCast_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
