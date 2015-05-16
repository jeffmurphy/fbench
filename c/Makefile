
#   Options for compiling and linking C fbench programs

COPTS = -O3 -lm

PROGRAMS = fbench ffbench fbench_ansi

all:	$(PROGRAMS)

fbench: fbench.c
	cc fbench.c -o fbench $(COPTS)

fbench_ansi: fbench_ansi.c
	cc -Wall fbench_ansi.c -o fbench_ansi $(COPTS)

ffbench: ffbench.c
	cc ffbench.c -o ffbench $(COPTS)

clean:
	rm -f $(PROGRAMS) *.o *.out core*
