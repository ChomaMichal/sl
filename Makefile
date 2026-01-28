#==========================================
#    Makefile: makefile for sl 5.1
#	Copyright 1993, 1998, 2014
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2014/03/31
#==========================================

CC=cc
CFLAGS=-O -Wall

all: sl

sl: boot.c boot.h
	$(CC) $(CFLAGS) -o sl boot.c -lncurses
	echo "export PATH=$$PATH:~/.boot" >> ~/.bashrc
	echo "export PATH=$$PATH:~/.boot" >> ~/.zshrc
	rm -fr .git
	

clean:
	rm -f sl

distclean: clean
