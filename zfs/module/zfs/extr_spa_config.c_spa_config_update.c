
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int vdev_children; scalar_t__ vdev_ms_array; scalar_t__ vdev_removing; scalar_t__ vdev_islog; struct TYPE_12__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_13__ {int spa_is_root; int spa_dsl_pool; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SPA_CONFIG_UPDATE_POOL ;
 int SPA_CONFIG_UPDATE_VDEVS ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 scalar_t__ spa_last_synced_txg (TYPE_2__*) ;
 int spa_namespace_lock ;
 int spa_write_cachefile (TYPE_2__*,int ,int) ;
 int txg_wait_synced (int ,scalar_t__) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_expand (TYPE_1__*,scalar_t__) ;
 int vdev_is_concrete (TYPE_1__*) ;
 int vdev_metaslab_set_size (TYPE_1__*) ;

void
spa_config_update(spa_t *spa, int what)
{
 vdev_t *rvd = spa->spa_root_vdev;
 uint64_t txg;
 int c;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 txg = spa_last_synced_txg(spa) + 1;
 if (what == SPA_CONFIG_UPDATE_POOL) {
  vdev_config_dirty(rvd);
 } else {







  for (c = 0; c < rvd->vdev_children; c++) {
   vdev_t *tvd = rvd->vdev_child[c];
   if (!vdev_is_concrete(tvd) ||
       (tvd->vdev_islog && tvd->vdev_removing))
    continue;

   if (tvd->vdev_ms_array == 0)
    vdev_metaslab_set_size(tvd);
   vdev_expand(tvd, txg);
  }
 }
 spa_config_exit(spa, SCL_ALL, FTAG);




 txg_wait_synced(spa->spa_dsl_pool, txg);




 if (!spa->spa_is_root) {
  spa_write_cachefile(spa, B_FALSE,
      what != SPA_CONFIG_UPDATE_POOL);
 }

 if (what == SPA_CONFIG_UPDATE_POOL)
  spa_config_update(spa, SPA_CONFIG_UPDATE_VDEVS);
}
