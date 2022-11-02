cc = gcc
CFLAGS = -g -c
AR = ar -rc
RANLIB = ranlib

Target: libmypthread.a

libmypthread.a: mypthread.o
	$(AR) libmypthread.a mypthread.o
	$(RANLIB) mypthread.a
  
mypthread.o: mypthread.h
	$(CC) -pthread $(CFLAGS) mypthread.c

clean:
	rm -rf testfile *.o *.a
