
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_bitset ;



int stb_bitset_unioneq_changed(stb_bitset *p0, stb_bitset *p1, int len)
{
   int i, changed=0;
   for (i=0; i < len; ++i) {
      stb_bitset d = p0[i] | p1[i];
      if (d != p0[i]) {
         p0[i] = d;
         changed = 1;
      }
   }
   return changed;
}
