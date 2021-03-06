CC=gcc
CFLAGS=
LDFLAGS=
EXEC=cIMatrice

all: $(EXEC)

cIMatrice: jacobi.o main.o display.o testMatrice.o gs.o testing.o
	$(CC) -o $@ $^ $(LDFLAGS) -lm

main.o: jacobi.o display.o testMatrice.o gs.o testing.o

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS) -lm

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)