
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ io_timestamp; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_11__ {int vq_lock; int vq_active_tree; } ;
struct TYPE_10__ {int vdev_children; int vdev_path; int * vdev_spa; TYPE_4__ vdev_queue; TYPE_1__* vdev_ops; struct TYPE_10__** vdev_child; } ;
typedef TYPE_3__ vdev_t ;
typedef TYPE_4__ vdev_queue_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;


 TYPE_2__* avl_first (int *) ;
 scalar_t__ avl_numnodes (int *) ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_deadman_synctime (int *) ;
 int zfs_dbgmsg (char*,int ,scalar_t__) ;
 int zio_deadman (TYPE_2__*,char*) ;

void
vdev_deadman(vdev_t *vd, char *tag)
{
 for (int c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];

  vdev_deadman(cvd, tag);
 }

 if (vd->vdev_ops->vdev_op_leaf) {
  vdev_queue_t *vq = &vd->vdev_queue;

  mutex_enter(&vq->vq_lock);
  if (avl_numnodes(&vq->vq_active_tree) > 0) {
   spa_t *spa = vd->vdev_spa;
   zio_t *fio;
   uint64_t delta;

   zfs_dbgmsg("slow vdev: %s has %d active IOs",
       vd->vdev_path, avl_numnodes(&vq->vq_active_tree));






   fio = avl_first(&vq->vq_active_tree);
   delta = gethrtime() - fio->io_timestamp;
   if (delta > spa_deadman_synctime(spa))
    zio_deadman(fio, tag);
  }
  mutex_exit(&vq->vq_lock);
 }
}
