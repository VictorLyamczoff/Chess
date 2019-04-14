CXX=gcc
CFLAGS = -c -Wall -Werror -std=c99
FLAGS  =  -Wall -Werror -std=c99
OBJECTS = build/main.o build/board.o build/board_print_plain.o build/board_print.o build/board_read.o 

.PHONY: clean all bin build default test

all: bin build default test

default: bin/programm

bin/programm: $(OBJECTS)
	$(CXX) $(FLAGS) $(OBJECTS) -o bin/programm

build/main.o: src/main.c src/board.h src/board_print.h src/board_print_plain.h src/board_read.h
	$(CXX) $(CFLAGS) src/main.c -o build/main.o 

build/board.o: src/board.c src/board.h src/board_print.h src/board_print_plain.h src/board_read.h
	$(CXX) $(CFLAGS) src/board.c -o build/board.o 

build/board_print_plain.o: src/board_print_plain.c src/board.h src/board_print.h src/board_print_plain.h src/board_read.h
	$(CXX) $(CFLAGS) src/board_print_plain.c -o build/board_print_plain.o

build/board_print.o: src/board_print.c src/board.h src/board_print.h src/board_print_plain.h src/board_read.h
	$(CXX) $(CFLAGS) src/board_print.c -o build/board_print.o

build/board_read.o: src/board_read.c src/board_read.h src/board.h
	$(CXX) $(CFLAGS) src/board_read.c -o build/board_read.o


build:
	mkdir -p build
bin:
	mkdir -p bin 
clean:
	-rm -rf build bin

