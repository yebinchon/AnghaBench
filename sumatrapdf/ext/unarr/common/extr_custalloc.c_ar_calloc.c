
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 void* ar_malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *ar_calloc(size_t count, size_t size)
{
    void *ptr = ((void*)0);
    if (size <= SIZE_MAX / count)
        ptr = ar_malloc(count * size);
    if (ptr)
        memset(ptr, 0, count * size);
    return ptr;
}
