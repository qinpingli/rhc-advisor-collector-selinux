TARGET?=rhc_advisor_collector
MODULES?=${TARGET:=.pp.bz2}

SELINUX_DEVEL?=/usr/share/selinux/devel

all: ${TARGET:=.pp.bz2}

%.pp.bz2: %.pp
	@echo Compressing $^ -> $@
	bzip2 -f -9 $^

%.pp: %.te
	$(MAKE) -f ${SELINUX_DEVEL}/Makefile $@

clean:
	rm -f *~ *.tc *.pp *.pp.bz2
	rm -rf tmp *.tar.gz

install-policy: all
	semodule -i ${TARGET}.pp.bz2
