all: asn2

asn2: main.o class.o
	g++ main.o class.o -std=c++11 -pthread -o asn2
	
class.o: class.cpp
	g++ class.cpp -std=c++11 -pthread -c

main.o: main.cpp
	g++ main.cpp -std=c++11 -pthread -c

clean: 
	rm *o asn2