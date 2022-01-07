
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int stb_rehash (unsigned int) ;

unsigned int stb_hashptr(void *p)
{
    unsigned int x = (unsigned int)(size_t) p;


   x = stb_rehash(x);
   x += x << 16;


   x ^= x << 3;
   x += x >> 5;
   x ^= x << 2;
   x += x >> 15;
   x ^= x << 10;
   return stb_rehash(x);
}
