CC = cc
RM = rm
CFLAGS = -Wall -ansi -lm -std=gnu99
LIBS = -lrt
.SUFFIXES: 
.SUFFIXES: .c .o .h

all: shm_server shm_client

# explicit

shm_server: shm_server.o
	$(CC) $(CFLAGS) -o shm_server shm_server.o $(LIBS)

shm_client: shm_client.o
	$(CC) $(CFLAGS) -o shm_client shm_client.o $(LIBS)

# implicit

shm_server.o: shm_server.c
	$(CC) -c -g $(CFLAGS) shm_server.c
shm_client.o: shm_client.c
	$(CC) -c -g $(CFLAGS) shm_client.c
# clean up
clean:
	$(RM) -f $(OBJ) shm_client.o shm_client shm_server shm_server.o

