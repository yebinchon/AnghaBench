
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

void *Pal_Mem_realloc(void *ptr, size_t size)
{
 return realloc(ptr, size);
}
