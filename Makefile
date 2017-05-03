all: hello

hello: main.o helloWorld.o
	g++ -std=c++11 main.o helloWorld.o -o hello
main.o: main.cpp helloWorld.hpp
	g++ -std=c++11 -c main.cpp

helloWorld.o: helloWorld.cpp helloWorld.hpp
	g++ -std=c++11 -c helloWorld.cpp

clean:
	rm -rf *.o hello
