
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

void * opj_realloc(void *ptr, size_t new_size)
{
    if (new_size == 0U) {
        return ((void*)0);
    }
    return realloc(ptr, new_size);
}
