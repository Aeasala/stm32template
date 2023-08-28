# Name of this application (APPNAME.elf in bin/)
APPNAME := $(shell basename $(CURDIR))

# Core folder name
CORE := stm32core

# make these variables scoped here before modules.mk
SOURCES :=
OBJECTS :=

# Additional modules to compile (tasks by default, this is where main sits)
include modules.mk

include $(patsubst %,%/subdir.mk,$(MODULES))

# core.mk takes over from here, using everything defined here.
include $(CORE)/core.mk