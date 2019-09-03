# makefile for cs327 project1
# prof: K Perkins @ CNU.edu
# auth: wesley chang	00960978
# date: 3 Sept 2k19

# define COMP for g++ ver. 7.4.0 on ubuntu 18.04-3
COMP = g++
CFLAGS = -Wall
RM = rm -f

# default target output
all: myexe

# make myexe, needs main and myfunc objects
myexe:	main.o myfunc.o
		$(COMP) $(CFLAGS) -o myexe main.o myfunc.o

# create object main, needs main.cpp
main.o:	main.cpp
		$(COMP) $(CFLAGS) -c main.cpp

# create object myfunc, needs myfunc.h and myfunc.cpp
myfunc.o: myfunc.cpp myfunc.h
		$(COMP) $(CFLAGS) -c myfunc.cpp

# remove executable and object files (if they exist), for rebuilding from zero
clean:
		$(RM) myexe *.o
