#DEBUG=0
TARGET = iphone:clang:14.5:14.5

ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = rootless
include $(THEOS)/makefiles/common.mk
TOOL_NAME = classdump-dyld
classdump-dyld_FILES = main.mm
classdump-dyld_FRAMEWORKS = CoreFoundation Foundation
#classdump-dyld_LDFLAGS = -Wl,-segalign,0x4000 -undefined dynamic_lookup
classdump-dyld_CODESIGN_FLAGS = -Sent.plist
include $(THEOS)/makefiles/tool.mk
include $(THEOS)/makefiles/library.mk
SUBPROJECTS += classdumpdyldlib
include $(THEOS_MAKE_PATH)/aggregate.mk
