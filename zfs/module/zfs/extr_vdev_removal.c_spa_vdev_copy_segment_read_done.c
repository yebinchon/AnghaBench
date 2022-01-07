
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_error; scalar_t__ io_size; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int vca_lock; int vca_read_error_bytes; } ;
typedef TYPE_2__ vdev_copy_arg_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zio_nowait (int ) ;
 int zio_unique_parent (TYPE_1__*) ;

__attribute__((used)) static void
spa_vdev_copy_segment_read_done(zio_t *zio)
{
 vdev_copy_arg_t *vca = zio->io_private;

 if (zio->io_error != 0) {
  mutex_enter(&vca->vca_lock);
  vca->vca_read_error_bytes += zio->io_size;
  mutex_exit(&vca->vca_lock);
 }

 zio_nowait(zio_unique_parent(zio));
}
