
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uap_lock; struct TYPE_3__* uap_next; } ;
typedef TYPE_1__ uu_avl_pool_t ;


 int pthread_mutex_lock (int *) ;
 int uu_apool_list_lock ;
 TYPE_1__ uu_null_apool ;

void
uu_avl_lockup(void)
{
 uu_avl_pool_t *pp;

 (void) pthread_mutex_lock(&uu_apool_list_lock);
 for (pp = uu_null_apool.uap_next; pp != &uu_null_apool;
     pp = pp->uap_next)
  (void) pthread_mutex_lock(&pp->uap_lock);
}
