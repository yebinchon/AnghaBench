
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t vdev_children; TYPE_2__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_3__ vdev_t ;
typedef size_t uint64_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ vdev_state; } ;
struct TYPE_5__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ VDEV_STATE_OFFLINE ;

boolean_t
vdev_children_are_offline(vdev_t *vd)
{
 ASSERT(!vd->vdev_ops->vdev_op_leaf);

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  if (vd->vdev_child[i]->vdev_state != VDEV_STATE_OFFLINE)
   return (B_FALSE);
 }

 return (B_TRUE);
}
