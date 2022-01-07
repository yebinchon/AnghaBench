
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_ashift; int vdev_deflate_ratio; int vdev_ishole; struct TYPE_4__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;


 int SPA_MINBLOCKSHIFT ;
 int vdev_psize_to_asize (TYPE_1__*,int) ;

__attribute__((used)) static void
vdev_set_deflate_ratio(vdev_t *vd)
{
 if (vd == vd->vdev_top && !vd->vdev_ishole && vd->vdev_ashift != 0) {
  vd->vdev_deflate_ratio = (1 << 17) /
      (vdev_psize_to_asize(vd, 1 << 17) >> SPA_MINBLOCKSHIFT);
 }
}
