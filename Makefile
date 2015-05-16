
WEBDIR = $(HOME)/web/fbench

#   Options for compiling and linking FORTRAN programs
FORTRANOPTS = -O3

all:
	@echo "Please make for a specified language: ada algol60 algol68 c cobol erlang"
	@echo "    fortran go haskell pascal simula"
	
ada:	ada/fbench.adb Makefile
	( cd ada ; rm -f fbench.o fbench ; gnatmake $(ADAOPTS) fbench.adb )
	
algol60:	algol60/fbench.alg algol60/Makefile
	( cd algol60; make clean; make )
	
algol68:	algol68/fbench.a68 algol68/Makefile
	( cd algol68; make clean; make )

c:	c/fbench.c c/ffbench.c Makefile c/Makefile
	( cd c; make clean; make )
	
cobol:	cobol/fbench.cob cobol/fbench_dec.cob Makefile
	( cd cobol; make clean; make )
	
erlang:		erlang/fbench.erl erlang/Makefile
	( cd erlang; make clean; make )

fortran:	fortran/fbench.f Makefile
	( cd fortran ; make clean; make )
	
go:	go/fbench.go Makefile
	( cd go; make clean; make )
	
haskell:	haskell/fbench.hs Makefile haskell/Makefile
	( cd haskell; make clean; make )
		
pascal: pascal/fbench_borland.p pascal/Makefile
	( cd pascal; make clean; make )
	
simula:		simula/fbench.sim simula/Makefile
	( cd simula; make clean; make )

dist:
	make clean
	rm -f fbench.zip
	zip -r fbench.zip Makefile \
	    c \
	    ada/fbench.adb \
	    algol60 \
	    algol68 \
	    atlast \
	    cobol \
	    erlang \
	    forth \
	    fortran \
	    go \
	    haskell \
	    java \
	    javascript \
	    lisp/fbench.lsp \
	    lua \
	    mbasic \
	    pascal \
	    perl \
	    python \
	    ruby \
	    scilab \
	    simula \
	    smalltalk/fbench.st smalltalk/results.txt \
	    visualbasic

release:
	cp -p fbench.zip $(WEBDIR)

clean:
	rm -f $(PROGRAMS) fortran/fbench *.o *.out core *.bak *.zip
	( cd c; make clean )
	( cd cobol; make clean )
	( cd erlang; make clean )
	( cd fortran; make clean )
	( cd go; make clean )
	( cd lua; make clean )
	( cd pascal; make clean )
	( cd haskell; make clean )
	( cd algol68; make clean )
	( cd algol60; make clean )
	( cd simula; make clean )

