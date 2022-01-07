
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdev_trim_state_t ;
struct TYPE_7__ {size_t vdev_children; struct TYPE_7__** vdev_child; int vdev_trim_lock; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
typedef int list_t ;
struct TYPE_6__ {scalar_t__ vdev_op_leaf; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ vdev_is_concrete (TYPE_2__*) ;
 int vdev_trim_stop (TYPE_2__*,int ,int *) ;

__attribute__((used)) static void
vdev_trim_stop_all_impl(vdev_t *vd, vdev_trim_state_t tgt_state,
    list_t *vd_list)
{
 if (vd->vdev_ops->vdev_op_leaf && vdev_is_concrete(vd)) {
  mutex_enter(&vd->vdev_trim_lock);
  vdev_trim_stop(vd, tgt_state, vd_list);
  mutex_exit(&vd->vdev_trim_lock);
  return;
 }

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  vdev_trim_stop_all_impl(vd->vdev_child[i], tgt_state,
      vd_list);
 }
}
