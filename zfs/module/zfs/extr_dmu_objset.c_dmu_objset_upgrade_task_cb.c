
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_upgrade_lock; scalar_t__ os_upgrade_id; scalar_t__ os_upgrade_exit; int (* os_upgrade_cb ) (TYPE_1__*) ;int os_upgrade_status; } ;
typedef TYPE_1__ objset_t ;


 scalar_t__ B_TRUE ;
 int EINTR ;
 int dmu_objset_ds (TYPE_1__*) ;
 int dsl_dataset_long_rele (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (TYPE_1__*) ;
 int upgrade_tag ;

__attribute__((used)) static void
dmu_objset_upgrade_task_cb(void *data)
{
 objset_t *os = data;

 mutex_enter(&os->os_upgrade_lock);
 os->os_upgrade_status = EINTR;
 if (!os->os_upgrade_exit) {
  mutex_exit(&os->os_upgrade_lock);

  os->os_upgrade_status = os->os_upgrade_cb(os);
  mutex_enter(&os->os_upgrade_lock);
 }
 os->os_upgrade_exit = B_TRUE;
 os->os_upgrade_id = 0;
 mutex_exit(&os->os_upgrade_lock);
 dsl_dataset_long_rele(dmu_objset_ds(os), upgrade_tag);
}
