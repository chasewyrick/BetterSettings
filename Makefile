include $(THEOS)/makefiles/common.mk

TWEAK_NAME = rewriteSettings
rewriteSettings_FILES = Tweak.xm UIImage+ScaledImage.m
rewriteSettings_PRIVATE_FRAMEWORKS = WiFiKitUI
rewriteSettings_EXTRA_FRAMEWORKS = PrefixUI

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"