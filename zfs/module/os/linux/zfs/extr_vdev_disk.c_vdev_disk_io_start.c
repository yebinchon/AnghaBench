
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int io_error; int io_type; int io_trim_flags; int io_offset; int io_size; int io_target_timestamp; int io_cmd; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_12__ {int vdev_nowritecache; TYPE_3__* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_13__ {int vd_lock; int * vd_bdev; } ;
typedef TYPE_3__ vdev_disk_t ;


 unsigned long BLKDEV_DISCARD_SECURE ;

 void* ENOTSUP ;
 void* ENXIO ;
 int GFP_NOFS ;
 int READ ;
 int RW_READER ;
 void* SET_ERROR (void*) ;
 int WRITE ;
 int ZIO_TRIM_SECURE ;




 int __vdev_disk_physio (int *,TYPE_1__*,int,int,int,int ) ;
 int blkdev_issue_discard (int *,int,int,int ,unsigned long) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int vdev_disk_io_flush (int *,TYPE_1__*) ;
 int vdev_readable (TYPE_2__*) ;
 int zfs_nocacheflush ;
 int zio_execute (TYPE_1__*) ;
 int zio_handle_io_delay (TYPE_1__*) ;
 int zio_interrupt (TYPE_1__*) ;

__attribute__((used)) static void
vdev_disk_io_start(zio_t *zio)
{
 vdev_t *v = zio->io_vd;
 vdev_disk_t *vd = v->vdev_tsd;
 unsigned long trim_flags = 0;
 int rw, error;





 if (vd == ((void*)0)) {
  zio->io_error = ENXIO;
  zio_interrupt(zio);
  return;
 }

 rw_enter(&vd->vd_lock, RW_READER);





 if (vd->vd_bdev == ((void*)0)) {
  rw_exit(&vd->vd_lock);
  zio->io_error = ENXIO;
  zio_interrupt(zio);
  return;
 }

 switch (zio->io_type) {
 case 131:

  if (!vdev_readable(v)) {
   rw_exit(&vd->vd_lock);
   zio->io_error = SET_ERROR(ENXIO);
   zio_interrupt(zio);
   return;
  }

  switch (zio->io_cmd) {
  case 132:

   if (zfs_nocacheflush)
    break;

   if (v->vdev_nowritecache) {
    zio->io_error = SET_ERROR(ENOTSUP);
    break;
   }

   error = vdev_disk_io_flush(vd->vd_bdev, zio);
   if (error == 0) {
    rw_exit(&vd->vd_lock);
    return;
   }

   zio->io_error = error;

   break;

  default:
   zio->io_error = SET_ERROR(ENOTSUP);
  }

  rw_exit(&vd->vd_lock);
  zio_execute(zio);
  return;
 case 128:
  rw = WRITE;
  break;

 case 130:
  rw = READ;
  break;

 case 129:




  zio->io_error = -blkdev_issue_discard(vd->vd_bdev,
      zio->io_offset >> 9, zio->io_size >> 9, GFP_NOFS,
      trim_flags);

  rw_exit(&vd->vd_lock);
  zio_interrupt(zio);
  return;

 default:
  rw_exit(&vd->vd_lock);
  zio->io_error = SET_ERROR(ENOTSUP);
  zio_interrupt(zio);
  return;
 }

 zio->io_target_timestamp = zio_handle_io_delay(zio);
 error = __vdev_disk_physio(vd->vd_bdev, zio,
     zio->io_size, zio->io_offset, rw, 0);
 rw_exit(&vd->vd_lock);

 if (error) {
  zio->io_error = error;
  zio_interrupt(zio);
  return;
 }
}
