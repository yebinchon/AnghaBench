
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; int vdev_min_asize; } ;
typedef TYPE_1__ vdev_t ;


 int vdev_get_min_asize (TYPE_1__*) ;

void
vdev_set_min_asize(vdev_t *vd)
{
 vd->vdev_min_asize = vdev_get_min_asize(vd);

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_set_min_asize(vd->vdev_child[c]);
}
