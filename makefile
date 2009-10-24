all: clean tsp

clean:
	clear
	rm -f *.h.gch a.out

tsp:
	g++ -g -Wall tsp.cpp

run:
	./a.out

test:
	./testfall/testAll.sh | awk '{ sum += $$3 } END { print sum }'


submit: clean tsp
	./submit.py -f -p tsp tsp.cpp
