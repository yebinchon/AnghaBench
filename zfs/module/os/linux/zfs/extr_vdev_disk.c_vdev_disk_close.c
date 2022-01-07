
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* vdev_tsd; int vdev_spa; scalar_t__ vdev_reopening; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {int vd_lock; int * vd_bdev; } ;
typedef TYPE_2__ vdev_disk_t ;


 int FMODE_EXCL ;
 int blkdev_put (int *,int) ;
 int kmem_free (TYPE_2__*,int) ;
 int rw_destroy (int *) ;
 int spa_mode (int ) ;
 int vdev_bdev_mode (int ) ;

__attribute__((used)) static void
vdev_disk_close(vdev_t *v)
{
 vdev_disk_t *vd = v->vdev_tsd;

 if (v->vdev_reopening || vd == ((void*)0))
  return;

 if (vd->vd_bdev != ((void*)0)) {
  blkdev_put(vd->vd_bdev,
      vdev_bdev_mode(spa_mode(v->vdev_spa)) | FMODE_EXCL);
 }

 rw_destroy(&vd->vd_lock);
 kmem_free(vd, sizeof (vdev_disk_t));
 v->vdev_tsd = ((void*)0);
}
