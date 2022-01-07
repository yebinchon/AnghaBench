
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; struct TYPE_5__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_4__ {scalar_t__ vdev_op_leaf; } ;



__attribute__((used)) static int
vdev_count_leaves_impl(vdev_t *vd)
{
 int n = 0;

 if (vd->vdev_ops->vdev_op_leaf)
  return (1);

 for (int c = 0; c < vd->vdev_children; c++)
  n += vdev_count_leaves_impl(vd->vdev_child[c]);

 return (n);
}
