
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_7__ {scalar_t__ ms_disabled; int ms_lock; TYPE_3__* ms_group; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_8__ {int mg_ms_disabled_lock; int mg_ms_disabled_cv; int mg_ms_disabled; TYPE_1__* mg_vd; } ;
typedef TYPE_3__ metaslab_group_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int * vdev_spa; } ;


 int cv_broadcast (int *) ;
 int metaslab_unload (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_get_dsl (int *) ;
 int txg_wait_synced (int ,int ) ;

void
metaslab_enable(metaslab_t *msp, boolean_t sync, boolean_t unload)
{
 metaslab_group_t *mg = msp->ms_group;
 spa_t *spa = mg->mg_vd->vdev_spa;






 if (sync)
  txg_wait_synced(spa_get_dsl(spa), 0);

 mutex_enter(&mg->mg_ms_disabled_lock);
 mutex_enter(&msp->ms_lock);
 if (--msp->ms_disabled == 0) {
  mg->mg_ms_disabled--;
  cv_broadcast(&mg->mg_ms_disabled_cv);
  if (unload)
   metaslab_unload(msp);
 }
 mutex_exit(&msp->ms_lock);
 mutex_exit(&mg->mg_ms_disabled_lock);
}
