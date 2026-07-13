MKIMAGE_DIR=imx-mkimage


.PHONY: all build_mkimage

all: build_mkimage

build_mkimage:
	cp artifacts/* $(MKIMAGE_DIR)/iMX93/
	$(MAKE) -C $(MKIMAGE_DIR) bin
	$(MAKE) -C $(MKIMAGE_DIR) flash_singleboot SOC=iMX93 dtbs=imx93-11x11-frdm.dtb
	cp $(MKIMAGE_DIR)/iMX93/flash.bin artifacts/flash.bin