
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* vdev_ops; TYPE_1__* vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
typedef int uint64_t ;
typedef int boolean_t ;
struct TYPE_7__ {int (* vdev_op_need_resilver ) (TYPE_3__*,int ,size_t) ;scalar_t__ vdev_op_leaf; } ;
struct TYPE_6__ {TYPE_3__* spa_root_vdev; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int stub1 (TYPE_3__*,int ,size_t) ;

boolean_t
vdev_dtl_need_resilver(vdev_t *vd, uint64_t offset, size_t psize)
{
 ASSERT(vd != vd->vdev_spa->spa_root_vdev);

 if (vd->vdev_ops->vdev_op_need_resilver == ((void*)0) ||
     vd->vdev_ops->vdev_op_leaf)
  return (B_TRUE);

 return (vd->vdev_ops->vdev_op_need_resilver(vd, offset, psize));
}
