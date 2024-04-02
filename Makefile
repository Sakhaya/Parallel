CPP=g++
CC=gcc
CCFLAG=-O3 -pthread
CPPFLAGS=-fopenmp -O3 -pthread --std=c++20

all: 1 2

run: all
	./1
	./2

clean1:
	rm 1 lib1.o -f

cleanq:
	rm q -f

clean2:
	rm 2 -f

clean: clean1 cleanq clean2

1: clean1
	# $(CC) $(CCFLAG) -c 1.c -o lib1.o
	$(CPP) $(CPPFLAGS) Lab1.cpp barrier.cpp manageThreads.cpp -o 1

2: clean2
	$(CPP) $(CPPFLAGS) Lab2.cpp manageThreads.cpp -o 2

q: cleanq
	$(CPP) $(CPPFLAGS) queue.cpp -o q