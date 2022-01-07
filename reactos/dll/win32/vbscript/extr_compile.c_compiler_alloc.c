
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int heap; } ;
typedef TYPE_1__ vbscode_t ;


 void* heap_pool_alloc (int *,size_t) ;

__attribute__((used)) static inline void *compiler_alloc(vbscode_t *vbscode, size_t size)
{
    return heap_pool_alloc(&vbscode->heap, size);
}
