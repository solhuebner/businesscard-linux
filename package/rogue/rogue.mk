################################################################################
#
# rogue
#
################################################################################

ROGUE_VERSION = 5.3-4.4.2020.1
ROGUE_SITE = https://github.com/solhuebner/rogue/archive
ROGUE_SOURCE = v$(ROGUE_VERSION).tar.gz
ROGUE_LICENSE = Custom
ROGUE_LICENSE_FILES = LICENSE.TXT
ROGUE_DEPENDENCIES = ncurses

ROGUE_CONF_OPTS = \
        --enable-ncurses \
        --enable-wizardmode \

$(eval $(autotools-package))
