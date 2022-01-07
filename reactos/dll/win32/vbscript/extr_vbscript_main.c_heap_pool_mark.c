
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mark; } ;
typedef TYPE_1__ heap_pool_t ;


 scalar_t__ TRUE ;

heap_pool_t *heap_pool_mark(heap_pool_t *heap)
{
    if(heap->mark)
        return ((void*)0);

    heap->mark = TRUE;
    return heap;
}
