ARCHS = armv7 armv7s arm64
DEBUG = 0
FORRELEASE = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
include theos/makefiles/common.mk

TWEAK_NAME = NoLiveClock
NoLiveClock_FILES = Tweak.xm
NoLiveClock_LDFLAGS += -Wl,-segalign,4000
NoLiveClock_CODESIGN_FLAGS = -S

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
