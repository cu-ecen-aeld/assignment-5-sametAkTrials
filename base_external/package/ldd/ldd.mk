
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '3682557389b674d8c063e95cbf84785d20a88558'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-sametAkTrials.git'
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull


$(eval $(kernel-module))
$(eval $(generic-package))
