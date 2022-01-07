
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acount; int count; int la; } ;
typedef TYPE_1__ kmem_cache_t ;
typedef void* PVOID ;


 void* ExAllocateFromNPagedLookasideList (int *) ;
 int atomic_inc (int *) ;

void* kmem_cache_alloc(kmem_cache_t *kc, int flags)
{
    PVOID ptr = ((void*)0);
    ptr = ExAllocateFromNPagedLookasideList(&(kc->la));
    if (ptr) {
        atomic_inc(&kc->count);
        atomic_inc(&kc->acount);
    }
    return ptr;
}
