
##############################################################
#
# AESD-EMBEDDEDSOCKET
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_EMBEDDEDSOCKET_VERSION = '3e776126944f32551ccba7b98e1b62b2a506b417'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_EMBEDDEDSOCKET_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-sametAkTrials.git'
AESD_EMBEDDEDSOCKET_SITE_METHOD = git
AESD_EMBEDDEDSOCKET_GIT_SUBMODULES = YES

define AESD_EMBEDDEDSOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_EMBEDDEDSOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/service/* $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
