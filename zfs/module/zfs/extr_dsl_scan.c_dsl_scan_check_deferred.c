
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; int vdev_resilver_deferred; TYPE_1__* vdev_ops; scalar_t__ vdev_aux; struct TYPE_6__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef int boolean_t ;
struct TYPE_5__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int vdev_is_concrete (TYPE_2__*) ;

__attribute__((used)) static boolean_t
dsl_scan_check_deferred(vdev_t *vd)
{
 boolean_t need_resilver = B_FALSE;

 for (int c = 0; c < vd->vdev_children; c++) {
  need_resilver |=
      dsl_scan_check_deferred(vd->vdev_child[c]);
 }

 if (!vdev_is_concrete(vd) || vd->vdev_aux ||
     !vd->vdev_ops->vdev_op_leaf)
  return (need_resilver);

 if (!vd->vdev_resilver_deferred)
  need_resilver = B_TRUE;

 return (need_resilver);
}
