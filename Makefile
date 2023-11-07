PREFIX ?= /usr/local

MODULES=src/util src/get__system src/get__stats src/get__hardware src/get__rice src/get__shell src/get__ascii src/main

all: haikufetch

haikufetch: $(MODULES)
	@printf '%s\n\n' '#!/bin/sh -e' >haikufetch
	tail -q --lines=+2 $^ > $@
	@echo 'main "$$@"' >>haikufetch

clean:
	-rm haikufetch

install:
	@echo installing haikufetch to ${PREFIX}/bin/haikufetch
	@install -Dm755 haikufetch $(PREFIX)/bin/haikufetch

uninstall:
	@rm -f $(PREFIX)/bin/haikufetch

.PHONY: all
