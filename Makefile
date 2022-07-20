exec = io.out
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

$.o: %.c include/%.h
	gcc -c $(flahs) $c -o $0

clean:
	-rm *.out
	-rm *.o
	-rm src/*.o