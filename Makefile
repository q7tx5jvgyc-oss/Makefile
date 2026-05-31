TARGET := iphone:clang:latest:14.0
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MustacheMenu
MustacheMenu_FILES = Tweak.x
MustacheMenu_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
