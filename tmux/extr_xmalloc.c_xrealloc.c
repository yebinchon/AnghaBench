
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xreallocarray (void*,int,size_t) ;

void *
xrealloc(void *ptr, size_t size)
{
 return xreallocarray(ptr, 1, size);
}
