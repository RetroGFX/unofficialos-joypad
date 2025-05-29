ifeq ($(DEVICE),$(filter $(DEVICE), S922X RK3588))
	obj-m := unofficialos-joypad.o
else ifeq ($(DEVICE),$(filter $(DEVICE), H700 RK3399))
	obj-m := unofficialos-singleadc-joypad.o
else
	obj-m := unofficialos-joypad.o unofficialos-singleadc-joypad.o
endif
