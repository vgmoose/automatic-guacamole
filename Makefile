BINARY      := vgedit

APP_TITLE	:= vgedit+
APP_AUTHOR 	:= vgmoose
APP_VERSION := 2.1

SOURCES		+=	. gui edit
CFLAGS		+= -DUSE_KEYBOARD

SOURCES += $(CHESTO_DIR)/libs/SDL_FontCache libs/robin-map/include/tsl
VPATH   += $(	CHESTO_DIR)/libs/SDL_FontCache libs/robin-map

ifeq (wiiu,$(MAKECMDGOALS))
SOURCES += $(CHESTO_DIR)/libs/wiiu_kbd
VPATH += $(CHESTO_DIR)/libs/wiiu_kbd
endif

include libs/chesto/Makefile