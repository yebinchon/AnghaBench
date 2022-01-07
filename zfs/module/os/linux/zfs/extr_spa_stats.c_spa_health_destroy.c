
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; int * kstat; } ;
struct TYPE_5__ {TYPE_3__ state; } ;
struct TYPE_6__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_kstat_t ;
typedef int kstat_t ;


 int kstat_delete (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
spa_health_destroy(spa_t *spa)
{
 spa_history_kstat_t *shk = &spa->spa_stats.state;
 kstat_t *ksp = shk->kstat;
 if (ksp)
  kstat_delete(ksp);

 mutex_destroy(&shk->lock);
}
