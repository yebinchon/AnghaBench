
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_bitset ;



int stb_bitset_disjoint_0(stb_bitset *p0, stb_bitset *p1, int len)
{
   int i;
   for (i=0; i < len; ++i)
      if ((p0[i] | p1[i]) != 0xffffffff) return 0;
   return 1;
}
