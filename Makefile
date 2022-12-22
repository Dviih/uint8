build:
	@echo "Building uint8"
	go build -ldflags="-s -w -buildid=dviih/uint8 -extldflags -O3"
install: build
ifeq ($(USER), root)
	@echo "Installing uint8 to /usr/bin/uint8"
	cp ./uint8 /usr/bin/uint8
else
	@echo "You must run this as root!"
endif
