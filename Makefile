CC = gcc
CFLAGS = -std=c99 -g -Wall -Wconversion -Wtype-limits -pedantic -Werror


all:hola.c
	$(CC) $(CFLAGS) hola.c -o pruebas

run:all
	./pruebas

valgrind: all
	valgrind --leak-check=full --track-origins=yes --show-reachable=yes ./pruebas
