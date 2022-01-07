
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_13__ {scalar_t__ os_upgrade_id; int os_upgrade_status; TYPE_1__* os_spa; int os_upgrade_lock; } ;
typedef TYPE_3__ objset_t ;
struct TYPE_11__ {int spa_upgrade_taskq; } ;


 int B_TRUE ;
 int DS_HOLD_FLAG_DECRYPT ;
 int FTAG ;
 int dmu_objset_ds (TYPE_3__*) ;
 int dmu_objset_hold_flags (int ,int ,int ,TYPE_3__**) ;
 int dmu_objset_id_quota_upgrade (TYPE_3__*) ;
 int dmu_objset_pool (TYPE_3__*) ;
 scalar_t__ dmu_objset_projectquota_upgradable (TYPE_3__*) ;
 scalar_t__ dmu_objset_userobjspace_upgradable (TYPE_3__*) ;
 int dsl_dataset_rele_flags (int ,int ,int ) ;
 int dsl_pool_rele (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int taskq_wait_id (int ,scalar_t__) ;

__attribute__((used)) static int
zfs_ioc_id_quota_upgrade(zfs_cmd_t *zc)
{
 objset_t *os;
 int error;

 error = dmu_objset_hold_flags(zc->zc_name, B_TRUE, FTAG, &os);
 if (error != 0)
  return (error);

 if (dmu_objset_userobjspace_upgradable(os) ||
     dmu_objset_projectquota_upgradable(os)) {
  mutex_enter(&os->os_upgrade_lock);
  if (os->os_upgrade_id == 0) {

   os->os_upgrade_status = 0;
   mutex_exit(&os->os_upgrade_lock);

   dmu_objset_id_quota_upgrade(os);
  } else {
   mutex_exit(&os->os_upgrade_lock);
  }

  dsl_pool_rele(dmu_objset_pool(os), FTAG);

  taskq_wait_id(os->os_spa->spa_upgrade_taskq, os->os_upgrade_id);
  error = os->os_upgrade_status;
 } else {
  dsl_pool_rele(dmu_objset_pool(os), FTAG);
 }

 dsl_dataset_rele_flags(dmu_objset_ds(os), DS_HOLD_FLAG_DECRYPT, FTAG);

 return (error);
}
