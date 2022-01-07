
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef size_t zio_type_t ;
struct TYPE_20__ {scalar_t__ io_txg; size_t io_type; int io_flags; scalar_t__ io_error; size_t io_priority; TYPE_5__* io_vd; scalar_t__ io_delta; scalar_t__ io_delay; int io_size; scalar_t__ io_gang_tree; TYPE_8__* io_spa; } ;
typedef TYPE_4__ zio_t ;
struct TYPE_23__ {int ** vsx_total_histo; int ** vsx_disk_histo; int ** vsx_queue_histo; int ** vsx_ind_histo; int ** vsx_agg_histo; } ;
struct TYPE_22__ {scalar_t__ vs_scan_processed; int * vs_bytes; int * vs_ops; int vs_self_healed; } ;
struct TYPE_21__ {int vdev_top; struct TYPE_21__* vdev_parent; TYPE_3__* vdev_ops; int vdev_stat_lock; TYPE_7__ vdev_stat_ex; TYPE_6__ vdev_stat; } ;
typedef TYPE_5__ vdev_t ;
typedef TYPE_6__ vdev_stat_t ;
typedef TYPE_7__ vdev_stat_ex_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_24__ {scalar_t__ spa_load_state; scalar_t__ spa_claiming; TYPE_2__* spa_dsl_pool; TYPE_5__* spa_root_vdev; } ;
typedef TYPE_8__ spa_t ;
struct TYPE_25__ {scalar_t__ scn_processed; } ;
typedef TYPE_9__ dsl_scan_phys_t ;
struct TYPE_19__ {scalar_t__ vdev_op_leaf; } ;
struct TYPE_18__ {TYPE_1__* dp_scan; } ;
struct TYPE_17__ {TYPE_9__ scn_phys; } ;


 int ASSERT (int) ;
 int DTL_MISSING ;
 int DTL_PARTIAL ;
 int DTL_SCRUB ;
 scalar_t__ EIO ;
 size_t L_HISTO (scalar_t__) ;
 size_t RQ_HISTO (int ) ;
 scalar_t__ SPA_LOAD_NONE ;
 int VDD_DTL ;
 int ZIO_FLAG_DELEGATED ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_IO_BYPASS ;
 int ZIO_FLAG_IO_REPAIR ;
 int ZIO_FLAG_IO_RETRY ;
 int ZIO_FLAG_SCAN_THREAD ;
 int ZIO_FLAG_SELF_HEAL ;
 int ZIO_FLAG_SPECULATIVE ;
 size_t ZIO_PRIORITY_NUM_QUEUEABLE ;
 size_t ZIO_TYPE_IOCTL ;
 size_t ZIO_TYPE_TRIM ;
 size_t ZIO_TYPE_WRITE ;
 int atomic_add_64 (scalar_t__*,scalar_t__) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_first_txg (TYPE_8__*) ;
 int spa_sync_pass (TYPE_8__*) ;
 scalar_t__ spa_syncing_txg (TYPE_8__*) ;
 int vdev_dirty (int ,int ,TYPE_5__*,scalar_t__) ;
 scalar_t__ vdev_dtl_contains (TYPE_5__*,int ,scalar_t__,int) ;
 int vdev_dtl_dirty (TYPE_5__*,int ,scalar_t__,int) ;

void
vdev_stat_update(zio_t *zio, uint64_t psize)
{
 spa_t *spa = zio->io_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *vd = zio->io_vd ? zio->io_vd : rvd;
 vdev_t *pvd;
 uint64_t txg = zio->io_txg;
 vdev_stat_t *vs = &vd->vdev_stat;
 vdev_stat_ex_t *vsx = &vd->vdev_stat_ex;
 zio_type_t type = zio->io_type;
 int flags = zio->io_flags;




 if (zio->io_gang_tree)
  return;

 if (zio->io_error == 0) {
  if (vd == rvd)
   return;

  ASSERT(vd == zio->io_vd);

  if (flags & ZIO_FLAG_IO_BYPASS)
   return;

  mutex_enter(&vd->vdev_stat_lock);

  if (flags & ZIO_FLAG_IO_REPAIR) {
   if (flags & ZIO_FLAG_SCAN_THREAD) {
    dsl_scan_phys_t *scn_phys =
        &spa->spa_dsl_pool->dp_scan->scn_phys;
    uint64_t *processed = &scn_phys->scn_processed;


    if (vd->vdev_ops->vdev_op_leaf)
     atomic_add_64(processed, psize);
    vs->vs_scan_processed += psize;
   }

   if (flags & ZIO_FLAG_SELF_HEAL)
    vs->vs_self_healed += psize;
  }





  if (vd->vdev_ops->vdev_op_leaf &&
      (zio->io_priority < ZIO_PRIORITY_NUM_QUEUEABLE)) {
   zio_type_t vs_type = type;






   if (type == ZIO_TYPE_TRIM)
    vs_type = ZIO_TYPE_IOCTL;

   vs->vs_ops[vs_type]++;
   vs->vs_bytes[vs_type] += psize;

   if (flags & ZIO_FLAG_DELEGATED) {
    vsx->vsx_agg_histo[zio->io_priority]
        [RQ_HISTO(zio->io_size)]++;
   } else {
    vsx->vsx_ind_histo[zio->io_priority]
        [RQ_HISTO(zio->io_size)]++;
   }

   if (zio->io_delta && zio->io_delay) {
    vsx->vsx_queue_histo[zio->io_priority]
        [L_HISTO(zio->io_delta - zio->io_delay)]++;
    vsx->vsx_disk_histo[type]
        [L_HISTO(zio->io_delay)]++;
    vsx->vsx_total_histo[type]
        [L_HISTO(zio->io_delta)]++;
   }
  }

  mutex_exit(&vd->vdev_stat_lock);
  return;
 }

 if (flags & ZIO_FLAG_SPECULATIVE)
  return;







 if (zio->io_error == EIO &&
     !(zio->io_flags & ZIO_FLAG_IO_RETRY))
  return;






 if (zio->io_vd == ((void*)0) && (zio->io_flags & ZIO_FLAG_DONT_PROPAGATE))
  return;

 if (spa->spa_load_state == SPA_LOAD_NONE &&
     type == ZIO_TYPE_WRITE && txg != 0 &&
     (!(flags & ZIO_FLAG_IO_REPAIR) ||
     (flags & ZIO_FLAG_SCAN_THREAD) ||
     spa->spa_claiming)) {
  if (vd->vdev_ops->vdev_op_leaf) {
   uint64_t commit_txg = txg;
   if (flags & ZIO_FLAG_SCAN_THREAD) {
    ASSERT(flags & ZIO_FLAG_IO_REPAIR);
    ASSERT(spa_sync_pass(spa) == 1);
    vdev_dtl_dirty(vd, DTL_SCRUB, txg, 1);
    commit_txg = spa_syncing_txg(spa);
   } else if (spa->spa_claiming) {
    ASSERT(flags & ZIO_FLAG_IO_REPAIR);
    commit_txg = spa_first_txg(spa);
   }
   ASSERT(commit_txg >= spa_syncing_txg(spa));
   if (vdev_dtl_contains(vd, DTL_MISSING, txg, 1))
    return;
   for (pvd = vd; pvd != rvd; pvd = pvd->vdev_parent)
    vdev_dtl_dirty(pvd, DTL_PARTIAL, txg, 1);
   vdev_dirty(vd->vdev_top, VDD_DTL, vd, commit_txg);
  }
  if (vd != rvd)
   vdev_dtl_dirty(vd, DTL_MISSING, txg, 1);
 }
}
