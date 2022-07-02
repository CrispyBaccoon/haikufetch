PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install haikufetch

install:
	@install -Dm755 haikufetch $(DESTDIR)$(PREFIX)/bin/haikufetch

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/haikufetch
