# Just something hacked up to make it easy to produce an initially valid
# distribution of the meta
SHELL=/bin/bash

VERSION=0.2.5
DEST=../dist

all:
	./replicate

dist:
	# since ran from bzr checkout, do not want to kill it...
	# rm -rf .bzr
	rm -f *.old
	rm -rf $(DEST)/ubuntucinnamon-meta-*
	mkdir -p $(DEST)/ubuntucinnamon-meta-$(VERSION)
	# copy only main files from this directory, no .bzr, etc...
	cp -r * $(DEST)/ubuntucinnamon-meta-$(VERSION)
