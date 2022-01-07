
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mem_size_t ;


 int RtlZeroMemory (void*,int) ;
 void* malloc (int) ;

void *
calloc(mem_size_t count, mem_size_t size)
{
    void *mem = malloc(count * size);

    if (!mem) return ((void*)0);

    RtlZeroMemory(mem, count * size);

    return mem;
}
