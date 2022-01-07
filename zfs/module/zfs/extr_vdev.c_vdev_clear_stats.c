
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vs_alloc; scalar_t__ vs_dspace; scalar_t__ vs_space; } ;
struct TYPE_5__ {int vdev_stat_lock; TYPE_1__ vdev_stat; } ;
typedef TYPE_2__ vdev_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
vdev_clear_stats(vdev_t *vd)
{
 mutex_enter(&vd->vdev_stat_lock);
 vd->vdev_stat.vs_space = 0;
 vd->vdev_stat.vs_dspace = 0;
 vd->vdev_stat.vs_alloc = 0;
 mutex_exit(&vd->vdev_stat_lock);
}
