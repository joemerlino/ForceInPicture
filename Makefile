include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ForceInPicture
ForceInPicture_FILES = Tweak.xm
ForceInPicture_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 backboardd"