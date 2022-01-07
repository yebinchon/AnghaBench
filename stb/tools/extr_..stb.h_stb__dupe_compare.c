
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__compare (void*,void*) ;

__attribute__((used)) static int stb__dupe_compare(const void *a, const void *b)
{
   void *p = *(void **) a;
   void *q = *(void **) b;

   return stb__compare(p,q);
}
