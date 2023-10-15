CC=g++
SRC=$(wildcard src/main.cpp) 
OBJ=$(SRC:.cpp=.o)
LINKS=-L sdl/lib
INCLUDE=-I sdl/include/SDL2 -I src/include
CFLAGS=-lmingw32 -lSDL2main -lSDL2

EXEC=prog.exe

all : $(EXEC)

$(EXEC) : $(OBJ)
	$(CC) -o $@ $(INCLUDE) $^ $(LINKS) $(CFLAGS)

%.o: %.cpp
	$(CC) -o $@ $(INCLUDE) -c $< $(LINKS) $(CFLAGS)

clean:
	rm src/*.o *.exe
