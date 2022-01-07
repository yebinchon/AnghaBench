
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__strcmpoffset ;
 int strcmp (char const*,char const*) ;

int stb__qsort_strcmp(const void *a, const void *b)
{
   const char *p = *(const char **) ((const char *) a + stb__strcmpoffset);
   const char *q = *(const char **) ((const char *) b + stb__strcmpoffset);
   return strcmp(p,q);
}
