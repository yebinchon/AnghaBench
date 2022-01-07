
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; int vdev_top; TYPE_1__* vdev_ops; struct TYPE_6__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ vdev_op_leaf; } ;


 int vdev_dirty (int ,int,TYPE_2__*,int ) ;

void
vdev_dirty_leaves(vdev_t *vd, int flags, uint64_t txg)
{
 for (int c = 0; c < vd->vdev_children; c++)
  vdev_dirty_leaves(vd->vdev_child[c], flags, txg);

 if (vd->vdev_ops->vdev_op_leaf)
  vdev_dirty(vd->vdev_top, flags, vd, txg);
}
