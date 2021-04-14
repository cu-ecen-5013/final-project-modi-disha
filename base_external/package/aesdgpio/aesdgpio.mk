
##############################################################
#
# AESDGPIO
#
##############################################################

AESDGPIO_VERSION=5f8901de184cab798cd21c759eed6d69f3c22405
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDGPIO_SITE=git@github.com:cu-ecen-5013/final-project-modi-disha.git
AESDGPIO_SITE_METHOD = git

define AESDGPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/aesdgpio all
endef

define AESDGPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesdgpio/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
