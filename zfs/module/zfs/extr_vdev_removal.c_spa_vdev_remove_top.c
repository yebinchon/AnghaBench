
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ vdev_id; int vdev_removing; int * vdev_mg; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int spa_dsl_pool; } ;
typedef TYPE_2__ spa_t ;
typedef int metaslab_group_t ;
typedef int dmu_tx_t ;


 int B_TRUE ;
 int FTAG ;
 int SPA_ASYNC_AUTOTRIM_RESTART ;
 int SPA_ASYNC_INITIALIZE_RESTART ;
 int SPA_ASYNC_TRIM_RESTART ;
 scalar_t__ TXG_CONCURRENT_STATES ;
 scalar_t__ TXG_DEFER_SIZE ;
 int VDD_DTL ;
 int VDEV_INITIALIZE_ACTIVE ;
 int VDEV_TRIM_ACTIVE ;
 int ZFS_SPACE_CHECK_NONE ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_assigned (int ,scalar_t__) ;
 int dsl_sync_task_nowait (int ,int ,void*,int ,int ,int *) ;
 int metaslab_group_activate (int *) ;
 int metaslab_group_passivate (int *) ;
 int spa_async_request (TYPE_2__*,int ) ;
 int spa_reset_logs (TYPE_2__*) ;
 scalar_t__ spa_vdev_config_enter (TYPE_2__*) ;
 int spa_vdev_config_exit (TYPE_2__*,int *,scalar_t__,int ,int ) ;
 int spa_vdev_remove_top_check (TYPE_1__*) ;
 int vdev_autotrim_stop_wait (TYPE_1__*) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_dirty_leaves (TYPE_1__*,int ,scalar_t__) ;
 int vdev_initialize_stop_all (TYPE_1__*,int ) ;
 int vdev_remove_initiate_sync ;
 int vdev_trim_stop_all (TYPE_1__*,int ) ;

__attribute__((used)) static int
spa_vdev_remove_top(vdev_t *vd, uint64_t *txg)
{
 spa_t *spa = vd->vdev_spa;
 int error;






 error = spa_vdev_remove_top_check(vd);
 if (error != 0)
  return (error);
 metaslab_group_t *mg = vd->vdev_mg;
 metaslab_group_passivate(mg);





 spa_vdev_config_exit(spa, ((void*)0),
     *txg + TXG_CONCURRENT_STATES + TXG_DEFER_SIZE, 0, FTAG);







 error = spa_reset_logs(spa);






 vdev_initialize_stop_all(vd, VDEV_INITIALIZE_ACTIVE);
 vdev_trim_stop_all(vd, VDEV_TRIM_ACTIVE);
 vdev_autotrim_stop_wait(vd);

 *txg = spa_vdev_config_enter(spa);





 if (error == 0)
  error = spa_vdev_remove_top_check(vd);

 if (error != 0) {
  metaslab_group_activate(mg);
  spa_async_request(spa, SPA_ASYNC_INITIALIZE_RESTART);
  spa_async_request(spa, SPA_ASYNC_TRIM_RESTART);
  spa_async_request(spa, SPA_ASYNC_AUTOTRIM_RESTART);
  return (error);
 }

 vd->vdev_removing = B_TRUE;

 vdev_dirty_leaves(vd, VDD_DTL, *txg);
 vdev_config_dirty(vd);
 dmu_tx_t *tx = dmu_tx_create_assigned(spa->spa_dsl_pool, *txg);
 dsl_sync_task_nowait(spa->spa_dsl_pool,
     vdev_remove_initiate_sync,
     (void *)(uintptr_t)vd->vdev_id, 0, ZFS_SPACE_CHECK_NONE, tx);
 dmu_tx_commit(tx);

 return (0);
}
