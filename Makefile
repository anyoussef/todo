ll: build/main

build:
	mkdir -p build

build/main: main.c | build
	gcc main.c -framework IOKit -framework Cocoa -framework OpenGL `pkg-config --libs --cflags raylib` -o build/main

run: build/main
	./build/main

clean:
	rm -rf build
