
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_asize; unsigned long long vdev_ms_shift; int vdev_min_asize; int vdev_children; int * vdev_ops; struct TYPE_3__* vdev_top; struct TYPE_3__* vdev_parent; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;


 int P2ALIGN (int,unsigned long long) ;
 int vdev_raidz_ops ;

uint64_t
vdev_get_min_asize(vdev_t *vd)
{
 vdev_t *pvd = vd->vdev_parent;





 if (pvd == ((void*)0))
  return (vd->vdev_asize);





 if (vd == vd->vdev_top)
  return (P2ALIGN(vd->vdev_asize, 1ULL << vd->vdev_ms_shift));





 if (pvd->vdev_ops == &vdev_raidz_ops)
  return ((pvd->vdev_min_asize + pvd->vdev_children - 1) /
      pvd->vdev_children);

 return (pvd->vdev_min_asize);
}
