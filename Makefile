.PHONY: clean all test install examples shared static

all: static shared examples

examples: shared static
	$(MAKE) -C examples

shared:
	$(MAKE) shared -C libscpi

static:
	$(MAKE) static -C libscpi

clean:
	$(MAKE) clean -C libscpi
	$(MAKE) clean -C examples

test:
	$(MAKE) test -C libscpi

install:
	$(MAKE) install -C libscpi
