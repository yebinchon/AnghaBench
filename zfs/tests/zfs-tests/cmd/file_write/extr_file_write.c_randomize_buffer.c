
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bigbuffer ;
 int rand () ;

void randomize_buffer(int block_size) {
 int i;
 char rnd = rand() & 0xff;
 for (i = 0; i < block_size; i++)
  bigbuffer[i] ^= rnd;
}
