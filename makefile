# makefile for fb-rotate

CFLAGS = -framework IOKit -framework ApplicationServices

CC = gcc
TARGET = fb-rotate
PREFIX = /usr/local

all: $(TARGET)
	$(CC) -w -o $(TARGET) $(TARGET).c $(CFLAGS)

install:
	install -m 0755 $(TARGET) $(PREFIX)/bin

uninstall:
	rm $(PREFIX)/bin/$(TARGET)	

clean:
	$(RM) $(TARGET)
