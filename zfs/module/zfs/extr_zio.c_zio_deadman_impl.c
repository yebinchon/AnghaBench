
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int zb_blkid; int zb_level; int zb_object; int zb_objset; } ;
struct TYPE_15__ {scalar_t__ io_timestamp; int io_lock; int io_tqent; int io_spa; int io_error; int io_size; int io_offset; int io_pipeline_trace; int io_pipeline; int io_stage; int io_flags; int io_priority; int io_type; int io_delay; int io_delta; TYPE_3__ io_bookmark; TYPE_4__* io_vd; } ;
typedef TYPE_2__ zio_t ;
typedef int zio_link_t ;
typedef TYPE_3__ zbookmark_phys_t ;
struct TYPE_18__ {int vq_io_complete_ts; } ;
struct TYPE_17__ {char* vdev_path; TYPE_5__ vdev_queue; TYPE_1__* vdev_ops; } ;
typedef TYPE_4__ vdev_t ;
typedef TYPE_5__ vdev_queue_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ vdev_op_leaf; } ;


 int FM_EREPORT_ZFS_DEADMAN ;
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_get_deadman_failmode (int ) ;
 scalar_t__ taskq_empty_ent (int *) ;
 int zfs_dbgmsg (char*,int,TYPE_2__*,scalar_t__,scalar_t__,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int zfs_ereport_post (int ,int ,TYPE_4__*,TYPE_3__*,TYPE_2__*,int ,int ) ;
 scalar_t__ zio_deadman_log_all ;
 int zio_interrupt (TYPE_2__*) ;
 TYPE_2__* zio_walk_children (TYPE_2__*,int **) ;

__attribute__((used)) static void
zio_deadman_impl(zio_t *pio, int ziodepth)
{
 zio_t *cio, *cio_next;
 zio_link_t *zl = ((void*)0);
 vdev_t *vd = pio->io_vd;

 if (zio_deadman_log_all || (vd != ((void*)0) && vd->vdev_ops->vdev_op_leaf)) {
  vdev_queue_t *vq = vd ? &vd->vdev_queue : ((void*)0);
  zbookmark_phys_t *zb = &pio->io_bookmark;
  uint64_t delta = gethrtime() - pio->io_timestamp;
  uint64_t failmode = spa_get_deadman_failmode(pio->io_spa);

  zfs_dbgmsg("slow zio[%d]: zio=%px timestamp=%llu "
      "delta=%llu queued=%llu io=%llu "
      "path=%s last=%llu "
      "type=%d priority=%d flags=0x%x "
      "stage=0x%x pipeline=0x%x pipeline-trace=0x%x "
      "objset=%llu object=%llu level=%llu blkid=%llu "
      "offset=%llu size=%llu error=%d",
      ziodepth, pio, pio->io_timestamp,
      delta, pio->io_delta, pio->io_delay,
      vd ? vd->vdev_path : "NULL", vq ? vq->vq_io_complete_ts : 0,
      pio->io_type, pio->io_priority, pio->io_flags,
      pio->io_stage, pio->io_pipeline, pio->io_pipeline_trace,
      zb->zb_objset, zb->zb_object, zb->zb_level, zb->zb_blkid,
      pio->io_offset, pio->io_size, pio->io_error);
  zfs_ereport_post(FM_EREPORT_ZFS_DEADMAN,
      pio->io_spa, vd, zb, pio, 0, 0);

  if (failmode == ZIO_FAILURE_MODE_CONTINUE &&
      taskq_empty_ent(&pio->io_tqent)) {
   zio_interrupt(pio);
  }
 }

 mutex_enter(&pio->io_lock);
 for (cio = zio_walk_children(pio, &zl); cio != ((void*)0); cio = cio_next) {
  cio_next = zio_walk_children(pio, &zl);
  zio_deadman_impl(cio, ziodepth + 1);
 }
 mutex_exit(&pio->io_lock);
}
