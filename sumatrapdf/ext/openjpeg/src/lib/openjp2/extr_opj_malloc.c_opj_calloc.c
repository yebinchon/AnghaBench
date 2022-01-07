
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

void * opj_calloc(size_t num, size_t size)
{
    if (num == 0 || size == 0) {

        return ((void*)0);
    }
    return calloc(num, size);
}
