#CC=clang
CC=gcc
CFLAGS=-c -Wall -std=c17
LDFLAGS= -lpthread
SOURCES=main.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=main.out

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	rm ./*.o

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

