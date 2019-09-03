/*
prof:		K Perkins @ CNU.edu
author: 	wchang	00960978
date:		3 Sept 2k19
assignment:	cs327 project 1
file:		main.cpp
purpose:	write a header + corresponding source file, use a makefile, move a function
comments:	
*/

//#includes are ALWAYS at top of file
#include <iostream>	//iostream is where std::cout and std::endl are defined
#include "myfunc.h" // myfunc is where MYFUNC_H / func() is defined

// MOVED to MYFUNC_H
// std::string func()

int main()
{
	std::cout<<func()<<std::endl;
	return 0;
}