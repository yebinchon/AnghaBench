
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t vdev_children; int vdev_scan_io_queue_lock; int * vdev_scan_io_queue; struct TYPE_8__** vdev_child; } ;
typedef TYPE_3__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_9__ {TYPE_2__* scn_dp; } ;
typedef TYPE_4__ dsl_scan_t ;
struct TYPE_7__ {TYPE_1__* dp_spa; } ;
struct TYPE_6__ {TYPE_3__* spa_root_vdev; } ;


 int dsl_scan_io_queue_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
scan_io_queues_destroy(dsl_scan_t *scn)
{
 vdev_t *rvd = scn->scn_dp->dp_spa->spa_root_vdev;

 for (uint64_t i = 0; i < rvd->vdev_children; i++) {
  vdev_t *tvd = rvd->vdev_child[i];

  mutex_enter(&tvd->vdev_scan_io_queue_lock);
  if (tvd->vdev_scan_io_queue != ((void*)0))
   dsl_scan_io_queue_destroy(tvd->vdev_scan_io_queue);
  tvd->vdev_scan_io_queue = ((void*)0);
  mutex_exit(&tvd->vdev_scan_io_queue_lock);
 }
}
