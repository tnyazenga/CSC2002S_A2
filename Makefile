# HelloWorld program makefile
# Hussein Suleman
# 26 February 2018

JAVAC=/usr/bin/javac
.SUFFIXES: .java .class

SRCDIR=src
BINDIR=bin
JAVADOC=docs

.PHONY: default doc clean

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<

CLASSES= SeqSearch.class
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)

doc:
		javadoc -d $(JAVADOC) $(SRCDIR)/*.java

clean:
	rm $(BINDIR)/*.class

runseq:
	@java -cp bin SeqSearch $(infile) $(outfile)
