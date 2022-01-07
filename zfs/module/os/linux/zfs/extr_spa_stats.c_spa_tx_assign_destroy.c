
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; int size; int private; int * kstat; } ;
struct TYPE_5__ {TYPE_3__ tx_assign_histogram; } ;
struct TYPE_6__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_kstat_t ;
typedef int kstat_t ;


 int kmem_free (int ,int ) ;
 int kstat_delete (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
spa_tx_assign_destroy(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.tx_assign_histogram;
 kstat_t *ksp;

 ksp = shk->kstat;
 if (ksp)
  kstat_delete(ksp);

 kmem_free(shk->private, shk->size);
 mutex_destroy(&shk->lock);
}
