
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* realloc ) (TYPE_1__*,void*,size_t) ;} ;
typedef TYPE_1__ Jbig2Allocator ;


 size_t SIZE_MAX ;
 void* stub1 (TYPE_1__*,void*,size_t) ;

void *
jbig2_realloc(Jbig2Allocator *allocator, void *p, size_t size, size_t num)
{

    if (num > 0 && size >= SIZE_MAX / num)
        return ((void*)0);
    return allocator->realloc(allocator, p, size * num);
}
