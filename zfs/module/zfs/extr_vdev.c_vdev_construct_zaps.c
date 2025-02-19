
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vdev_leaf_zap; scalar_t__ vdev_top_zap; scalar_t__ vdev_alloc_bias; size_t vdev_children; struct TYPE_8__** vdev_child; struct TYPE_8__* vdev_top; TYPE_3__* vdev_ops; int vdev_removing; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {scalar_t__ vdev_op_leaf; } ;


 scalar_t__ VDEV_BIAS_NONE ;
 void* vdev_create_link_zap (TYPE_1__*,int *) ;
 TYPE_3__ vdev_hole_ops ;
 TYPE_3__ vdev_missing_ops ;
 TYPE_3__ vdev_root_ops ;
 int vdev_zap_allocation_data (TYPE_1__*,int *) ;

void
vdev_construct_zaps(vdev_t *vd, dmu_tx_t *tx)
{
 if (vd->vdev_ops != &vdev_hole_ops &&
     vd->vdev_ops != &vdev_missing_ops &&
     vd->vdev_ops != &vdev_root_ops &&
     !vd->vdev_top->vdev_removing) {
  if (vd->vdev_ops->vdev_op_leaf && vd->vdev_leaf_zap == 0) {
   vd->vdev_leaf_zap = vdev_create_link_zap(vd, tx);
  }
  if (vd == vd->vdev_top && vd->vdev_top_zap == 0) {
   vd->vdev_top_zap = vdev_create_link_zap(vd, tx);
   if (vd->vdev_alloc_bias != VDEV_BIAS_NONE)
    vdev_zap_allocation_data(vd, tx);
  }
 }

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  vdev_construct_zaps(vd->vdev_child[i], tx);
 }
}
