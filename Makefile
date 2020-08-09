PACKAGE_FILE_NAME := uefi-boot-helper_1.0.0-1.deb
PACKAGE_FILES := $(shell find package -print)

$(PACKAGE_FILE_NAME): $(PACKAGE_FILES)
	dpkg-deb --root-owner-group --build package $(PACKAGE_FILE_NAME)
