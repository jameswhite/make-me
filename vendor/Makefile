#-*- mode:makefile-gmake; -*-

all: | brews
	$(MAKE) grue
	$(MAKE) s3g
	make -C stltwalker

## Grue build
grue: Miracle-Grue/bin/miracle_grue
Miracle-Grue/bin/miracle_grue:
	cd Miracle-Grue && scons

s3g: s3g/virtualenv/bin/activate
s3g/virtualenv/bin/activate:
	cd s3g && ./setup.sh

## System
brews:
	apt-get install -y avrdude || echo "AVRDude already brew installed [or failed]"
	apt-get install -y scons || echo "scons already brew installed [or failed]"

.PHONY: all brews grue s3g
