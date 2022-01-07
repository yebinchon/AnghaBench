
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mls_lock; } ;
typedef TYPE_1__ multilist_sublist_t ;


 int mutex_exit (int *) ;

void
multilist_sublist_unlock(multilist_sublist_t *mls)
{
 mutex_exit(&mls->mls_lock);
}
