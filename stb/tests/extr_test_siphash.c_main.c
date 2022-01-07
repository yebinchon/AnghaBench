
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 size_t stbds_hash_bytes (unsigned char*,int,int ) ;

int main(int argc, char **argv)
{
  unsigned char mem[64];
  int i,j;
  for (i=0; i < 64; ++i) mem[i] = i;
  for (i=0; i < 64; ++i) {
    size_t hash = stbds_hash_bytes(mem, i, 0);
    printf("  { ");
    for (j=0; j < 8; ++j)
      printf("0x%02x, ", (unsigned char) ((hash >> (j*8)) & 255));
    printf(" },\n");
  }
  return 0;
}
