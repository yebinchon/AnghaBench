
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vs_scan_processed; } ;
struct TYPE_4__ {int vdev_children; int vdev_stat_lock; struct TYPE_4__** vdev_child; TYPE_2__ vdev_stat; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_stat_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
vdev_scan_stat_init(vdev_t *vd)
{
 vdev_stat_t *vs = &vd->vdev_stat;

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_scan_stat_init(vd->vdev_child[c]);

 mutex_enter(&vd->vdev_stat_lock);
 vs->vs_scan_processed = 0;
 mutex_exit(&vd->vdev_stat_lock);
}
