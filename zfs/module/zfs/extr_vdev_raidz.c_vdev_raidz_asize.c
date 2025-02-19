
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; int vdev_nparity; TYPE_1__* vdev_top; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_4__ {int vdev_ashift; } ;


 int roundup (int,int) ;

__attribute__((used)) static uint64_t
vdev_raidz_asize(vdev_t *vd, uint64_t psize)
{
 uint64_t asize;
 uint64_t ashift = vd->vdev_top->vdev_ashift;
 uint64_t cols = vd->vdev_children;
 uint64_t nparity = vd->vdev_nparity;

 asize = ((psize - 1) >> ashift) + 1;
 asize += nparity * ((asize + cols - nparity - 1) / (cols - nparity));
 asize = roundup(asize, nparity + 1) << ashift;

 return (asize);
}
