
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__doublecmpoffset ;

int stb__doublecmp(const void *a, const void *b)
{
   const double p = *(const double *) ((const char *) a + stb__doublecmpoffset);
   const double q = *(const double *) ((const char *) b + stb__doublecmpoffset);
   return p < q ? -1 : p > q;
}
