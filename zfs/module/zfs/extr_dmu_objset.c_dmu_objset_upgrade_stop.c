
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ taskqid_t ;
struct TYPE_6__ {scalar_t__ os_upgrade_id; int os_upgrade_lock; TYPE_1__* os_spa; int os_upgrade_exit; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_5__ {int spa_dsl_pool; int spa_upgrade_taskq; } ;


 int B_TRUE ;
 int dmu_objset_ds (TYPE_2__*) ;
 int dsl_dataset_long_rele (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ taskq_cancel_id (int ,scalar_t__) ;
 int txg_wait_synced (int ,int ) ;
 int upgrade_tag ;

__attribute__((used)) static void
dmu_objset_upgrade_stop(objset_t *os)
{
 mutex_enter(&os->os_upgrade_lock);
 os->os_upgrade_exit = B_TRUE;
 if (os->os_upgrade_id != 0) {
  taskqid_t id = os->os_upgrade_id;

  os->os_upgrade_id = 0;
  mutex_exit(&os->os_upgrade_lock);

  if ((taskq_cancel_id(os->os_spa->spa_upgrade_taskq, id)) == 0) {
   dsl_dataset_long_rele(dmu_objset_ds(os), upgrade_tag);
  }
  txg_wait_synced(os->os_spa->spa_dsl_pool, 0);
 } else {
  mutex_exit(&os->os_upgrade_lock);
 }
}
