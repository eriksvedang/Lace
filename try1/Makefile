CFLAGS=`pkg-config --cflags sdl2`
LDFLAGS=`pkg-config --libs sdl2`

all: main.o;
	clang render.c db.c mongoose.c main.c -o Lace -g -O0 $(CFLAGS) $(LDFLAGS)

run:
	./Lace

clean: rm -f *.o main
