
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RtlCopyMemory (void*,void*,size_t) ;
 int free (void*) ;
 void* malloc (size_t) ;

void *
realloc(void *mem, size_t size)
{
    void* new_mem;


    if (mem == ((void*)0)) {
        return malloc(size);
    }


    if (size == 0) {
        free(mem);
        return ((void*)0);
    }


    new_mem = malloc(size);
    if (new_mem == ((void*)0)) {

        return ((void*)0);
    }


    RtlCopyMemory(new_mem, mem, size);


    free(mem);


    return new_mem;
}
