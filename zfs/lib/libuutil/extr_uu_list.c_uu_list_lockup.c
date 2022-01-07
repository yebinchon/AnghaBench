
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ulp_lock; struct TYPE_3__* ulp_next; } ;
typedef TYPE_1__ uu_list_pool_t ;


 int pthread_mutex_lock (int *) ;
 int uu_lpool_list_lock ;
 TYPE_1__ uu_null_lpool ;

void
uu_list_lockup(void)
{
 uu_list_pool_t *pp;

 (void) pthread_mutex_lock(&uu_lpool_list_lock);
 for (pp = uu_null_lpool.ulp_next; pp != &uu_null_lpool;
     pp = pp->ulp_next)
  (void) pthread_mutex_lock(&pp->ulp_lock);
}
