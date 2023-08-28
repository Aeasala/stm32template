CORE := stm32core
OBJECTS :=
SOURCES :=
include modules.mk
include $(patsubst %,%/subdir.mk,$(MODULES))

include $(CORE)/core.mk