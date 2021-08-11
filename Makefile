CC=clang
CFLAGS=-g -Wall
OBJS=shared_memory.o
EXE=write_shemem.elf read_shmem.elf destroy_shmem.elf

all: $(EXE)


%.elf: %.o $(OBJ)
	$(CC) $(CFLAGS) $< $(OBJS) -o $@
	
%.o: %.c %.h
	$(CC) $(CFLAGS) $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.dSYM *.o $(EXE)
