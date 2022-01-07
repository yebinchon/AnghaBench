
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int vdev_initialize_exit_wanted; int * vdev_initialize_thread; TYPE_1__* vdev_ops; int vdev_initialize_lock; int vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ vdev_initializing_state_t ;
typedef int list_t ;
struct TYPE_8__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 scalar_t__ VDEV_INITIALIZE_CANCELED ;
 int list_insert_tail (int *,TYPE_2__*) ;
 int spa_config_held (int ,int,int ) ;
 int spa_namespace_lock ;
 int vdev_initialize_change_state (TYPE_2__*,scalar_t__) ;
 int vdev_initialize_stop_wait_impl (TYPE_2__*) ;
 int vdev_is_concrete (TYPE_2__*) ;

void
vdev_initialize_stop(vdev_t *vd, vdev_initializing_state_t tgt_state,
    list_t *vd_list)
{
 ASSERT(!spa_config_held(vd->vdev_spa, SCL_CONFIG|SCL_STATE, RW_WRITER));
 ASSERT(MUTEX_HELD(&vd->vdev_initialize_lock));
 ASSERT(vd->vdev_ops->vdev_op_leaf);
 ASSERT(vdev_is_concrete(vd));





 if (vd->vdev_initialize_thread == ((void*)0) &&
     tgt_state != VDEV_INITIALIZE_CANCELED) {
  return;
 }

 vdev_initialize_change_state(vd, tgt_state);
 vd->vdev_initialize_exit_wanted = B_TRUE;

 if (vd_list == ((void*)0)) {
  vdev_initialize_stop_wait_impl(vd);
 } else {
  ASSERT(MUTEX_HELD(&spa_namespace_lock));
  list_insert_tail(vd_list, vd);
 }
}
