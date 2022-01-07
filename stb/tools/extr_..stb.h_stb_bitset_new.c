
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_bitset ;


 scalar_t__ malloc (int) ;

stb_bitset *stb_bitset_new(int value, int len)
{
   int i;
   stb_bitset *d = (stb_bitset *) malloc(sizeof(*d) * len);
   if (value) value = 0xffffffff;
   for (i=0; i < len; ++i) d[i] = value;
   return d;
}
