
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_free (void*) ;
 void* stb_malloc (void*,size_t) ;
 void* stb_realloc (void*,size_t) ;

void *stb_realloc_c(void *context, void *ptr, size_t newsize)
{
   if (ptr == ((void*)0)) return stb_malloc(context, newsize);
   if (newsize == 0) { stb_free(ptr); return ((void*)0); }

   return stb_realloc(ptr, newsize);
}
