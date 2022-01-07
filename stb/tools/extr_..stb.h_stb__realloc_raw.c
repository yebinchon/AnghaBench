
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* malloc (int) ;
 void* realloc (void*,int) ;

__attribute__((used)) static void * stb__realloc_raw(void *p, int sz)
{
   if (p == ((void*)0)) return malloc(sz);
   if (sz == 0) { free(p); return ((void*)0); }
   return realloc(p,sz);
}
