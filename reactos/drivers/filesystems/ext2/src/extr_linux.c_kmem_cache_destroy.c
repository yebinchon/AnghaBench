
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int la; } ;
typedef TYPE_1__ kmem_cache_t ;


 int ASSERT (int ) ;
 int ExDeleteNPagedLookasideList (int *) ;
 int kfree (TYPE_1__*) ;

int kmem_cache_destroy(kmem_cache_t * kc)
{
    ASSERT(kc != ((void*)0));

    ExDeleteNPagedLookasideList(&(kc->la));
    kfree(kc);

    return 0;
}
