
##############################################################
#
# SOCKETCOMM
#
##############################################################

SOCKETCOMM_VERSION=c0026732c48ddc6b8ae094fe9acc2f6462fffb56
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKETCOMM_SITE=git@github.com:cu-ecen-5013/final-project-modi-disha.git
SOCKETCOMM_SITE_METHOD = git

define SOCKETCOMM_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Client all
endef

define SOCKETCOMM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Client/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
