
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int lock; TYPE_4__* kstat; } ;
struct TYPE_7__ {TYPE_3__ iostats; } ;
struct TYPE_8__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_iostats_t ;
typedef TYPE_3__ spa_history_kstat_t ;
struct TYPE_10__ {int ks_data; } ;
typedef TYPE_4__ kstat_t ;


 int kmem_free (int ,int) ;
 int kstat_delete (TYPE_4__*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
spa_iostats_destroy(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.iostats;
 kstat_t *ksp = shk->kstat;
 if (ksp) {
  kmem_free(ksp->ks_data, sizeof (spa_iostats_t));
  kstat_delete(ksp);
 }

 mutex_destroy(&shk->lock);
}
