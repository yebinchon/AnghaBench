
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 void* realloc (void*,size_t) ;

void *safe_realloc(void *ptr, size_t size)
{
 if(ptr == ((void*)0)) return malloc(size);
 else return realloc(ptr, size);
}
