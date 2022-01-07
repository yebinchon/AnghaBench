
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mls_list; int mls_lock; } ;
typedef TYPE_1__ multilist_sublist_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int list_remove (int *,void*) ;

void
multilist_sublist_remove(multilist_sublist_t *mls, void *obj)
{
 ASSERT(MUTEX_HELD(&mls->mls_lock));
 list_remove(&mls->mls_list, obj);
}
