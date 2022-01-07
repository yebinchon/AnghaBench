
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ os_upgrade_id; scalar_t__ os_upgrade_status; int os_upgrade_lock; TYPE_1__* os_spa; int os_upgrade_cb; int os_upgrade_exit; } ;
typedef TYPE_2__ objset_t ;
typedef int dmu_objset_upgrade_cb_t ;
struct TYPE_7__ {int spa_upgrade_taskq; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 scalar_t__ ENOMEM ;
 scalar_t__ TASKQID_INVALID ;
 int TQ_SLEEP ;
 int dmu_objset_ds (TYPE_2__*) ;
 int dmu_objset_pool (TYPE_2__*) ;
 int dmu_objset_upgrade_task_cb ;
 int dsl_dataset_long_hold (int ,int ) ;
 int dsl_dataset_long_rele (int ,int ) ;
 int dsl_pool_config_held (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ taskq_dispatch (int ,int ,TYPE_2__*,int ) ;
 int upgrade_tag ;

__attribute__((used)) static void
dmu_objset_upgrade(objset_t *os, dmu_objset_upgrade_cb_t cb)
{
 if (os->os_upgrade_id != 0)
  return;

 ASSERT(dsl_pool_config_held(dmu_objset_pool(os)));
 dsl_dataset_long_hold(dmu_objset_ds(os), upgrade_tag);

 mutex_enter(&os->os_upgrade_lock);
 if (os->os_upgrade_id == 0 && os->os_upgrade_status == 0) {
  os->os_upgrade_exit = B_FALSE;
  os->os_upgrade_cb = cb;
  os->os_upgrade_id = taskq_dispatch(
      os->os_spa->spa_upgrade_taskq,
      dmu_objset_upgrade_task_cb, os, TQ_SLEEP);
  if (os->os_upgrade_id == TASKQID_INVALID) {
   dsl_dataset_long_rele(dmu_objset_ds(os), upgrade_tag);
   os->os_upgrade_status = ENOMEM;
  }
 }
 mutex_exit(&os->os_upgrade_lock);
}
