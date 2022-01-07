
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__intcmpoffset ;

int stb__intcmprev(const void *a, const void *b)
{
   const int p = *(const int *) ((const char *) a + stb__intcmpoffset);
   const int q = *(const int *) ((const char *) b + stb__intcmpoffset);
   return q < p ? -1 : q > p;
}
