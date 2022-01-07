
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ztest_ds_t ;
struct TYPE_14__ {int vdev_guid; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_13__ {scalar_t__ sr_state; } ;
struct TYPE_15__ {TYPE_1__ spa_removing_phys; } ;
typedef TYPE_3__ spa_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ DSS_SCANNING ;
 int FTAG ;
 int POOL_SCAN_SCRUB ;
 int RW_READER ;
 int SCL_VDEV ;
 scalar_t__ dsl_scan_scrubbing (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int spa_get_dsl (TYPE_3__*) ;
 int spa_scan (TYPE_3__*,int ) ;
 int spa_vdev_remove (TYPE_3__*,int ,scalar_t__) ;
 int txg_wait_synced (int ,int ) ;
 TYPE_2__* vdev_lookup_top (TYPE_3__*,int ) ;
 scalar_t__ ztest_device_removal_active ;
 int ztest_random_vdev_top (TYPE_3__*,scalar_t__) ;
 TYPE_3__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_device_removal(ztest_ds_t *zd, uint64_t id)
{
 spa_t *spa = ztest_spa;
 vdev_t *vd;
 uint64_t guid;
 int error;

 mutex_enter(&ztest_vdev_lock);

 if (ztest_device_removal_active) {
  mutex_exit(&ztest_vdev_lock);
  return;
 }




 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);
 vd = vdev_lookup_top(spa, ztest_random_vdev_top(spa, B_FALSE));
 guid = vd->vdev_guid;
 spa_config_exit(spa, SCL_VDEV, FTAG);

 error = spa_vdev_remove(spa, guid, B_FALSE);
 if (error == 0) {
  ztest_device_removal_active = B_TRUE;
  mutex_exit(&ztest_vdev_lock);
  txg_wait_synced(spa_get_dsl(spa), 0);

  while (spa->spa_removing_phys.sr_state == DSS_SCANNING)
   txg_wait_synced(spa_get_dsl(spa), 0);
 } else {
  mutex_exit(&ztest_vdev_lock);
  return;
 }







 error = spa_scan(spa, POOL_SCAN_SCRUB);
 if (error == 0) {
  while (dsl_scan_scrubbing(spa_get_dsl(spa)))
   txg_wait_synced(spa_get_dsl(spa), 0);
 }

 mutex_enter(&ztest_vdev_lock);
 ztest_device_removal_active = B_FALSE;
 mutex_exit(&ztest_vdev_lock);
}
