
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; int * vdev_child; TYPE_1__* vdev_top; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_4__ {unsigned long long vdev_ashift; } ;


 int MAX (int ,int ) ;
 int P2ROUNDUP (int ,unsigned long long) ;
 int vdev_psize_to_asize (int ,int ) ;

uint64_t
vdev_default_asize(vdev_t *vd, uint64_t psize)
{
 uint64_t asize = P2ROUNDUP(psize, 1ULL << vd->vdev_top->vdev_ashift);
 uint64_t csize;

 for (int c = 0; c < vd->vdev_children; c++) {
  csize = vdev_psize_to_asize(vd->vdev_child[c], psize);
  asize = MAX(asize, csize);
 }

 return (asize);
}
