#ifndef SHARED_MEMORY_H
#define SHARED_MEMORY_H

#include <stdbool.h>

/** All of the programs share these values */
#define BLOCK_SIZE 4096
#define FILENAME "writeshmem.c"

/** Attach a shared memory block associated with a filename.
 *  Create it if it does not exist */
char * attach_memory_block(char * filename, int size);
bool detach_memory_block(char * block);
bool destroy_memory_block(char * filename);

#endif