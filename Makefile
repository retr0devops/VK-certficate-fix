TARGET := iphone:clang:latest:7.0


include ~/theos/makefiles/common.mk

TWEAK_NAME = VKFixByRetr0

VKFixByRetr0_FILES = Tweak.x
VKFixByRetr0_CFLAGS = -fobjc-arc

include ~/theos/makefiles/tweak.mk
