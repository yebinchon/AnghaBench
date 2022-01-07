
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int stb__hashsize ;

void stb_compress_hashsize(unsigned int y)
{
   unsigned int z = 1024;
   while (z < y) z <<= 1;
   stb__hashsize = z >> 2;
}
