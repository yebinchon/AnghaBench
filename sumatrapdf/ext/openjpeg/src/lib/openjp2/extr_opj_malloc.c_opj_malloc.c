
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

void * opj_malloc(size_t size)
{
    if (size == 0U) {
        return ((void*)0);
    }
    return malloc(size);
}
