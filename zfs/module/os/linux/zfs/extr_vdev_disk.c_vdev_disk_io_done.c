
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_error; int io_spa; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int vdev_remove_wanted; TYPE_3__* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_7__ {int vd_bdev; } ;
typedef TYPE_3__ vdev_disk_t ;


 int B_TRUE ;
 scalar_t__ EIO ;
 int SPA_ASYNC_REMOVE ;
 scalar_t__ check_disk_change (int ) ;
 int invalidate_bdev (int ) ;
 int spa_async_request (int ,int ) ;

__attribute__((used)) static void
vdev_disk_io_done(zio_t *zio)
{





 if (zio->io_error == EIO) {
  vdev_t *v = zio->io_vd;
  vdev_disk_t *vd = v->vdev_tsd;

  if (check_disk_change(vd->vd_bdev)) {
   invalidate_bdev(vd->vd_bdev);
   v->vdev_remove_wanted = B_TRUE;
   spa_async_request(zio->io_spa, SPA_ASYNC_REMOVE);
  }
 }
}
