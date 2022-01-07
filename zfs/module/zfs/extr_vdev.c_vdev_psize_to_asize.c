
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_5__ {int (* vdev_op_asize ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

uint64_t
vdev_psize_to_asize(vdev_t *vd, uint64_t psize)
{
 return (vd->vdev_ops->vdev_op_asize(vd, psize));
}
