WHISPER_CPP_VERSION = master
WHISPER_CPP_SITE = https://github.com/ggerganov/whisper.cpp.git
WHISPER_CPP_SITE_METHOD = git
WHISPER_CPP_LICENSE = MIT
WHISPER_CPP_DEPENDENCIES = libsndfile
define WHISPER_CPP_BUILD_CMDS
    $(MAKE) -C $(@D)
endef
define WHISPER_CPP_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/main $(@D)/whisper $(@D)/examples/* $(TARGET_DIR)/usr/bin/
endef
$(eval $(generic-package))
