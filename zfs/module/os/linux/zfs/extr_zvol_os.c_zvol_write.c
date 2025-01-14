
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_16__ {scalar_t__ zv_open_count; scalar_t__ zv_volsize; TYPE_3__* zv_zso; int zv_suspend_lock; int * zv_zilog; int zv_dn; TYPE_11__* zv_objset; } ;
typedef TYPE_4__ zvol_state_t ;
struct TYPE_17__ {int lr; TYPE_4__* zv; struct bio* bio; } ;
typedef TYPE_5__ zv_request_t ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_18__ {scalar_t__ uio_resid; scalar_t__ uio_loffset; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_6__ uio_t ;
typedef scalar_t__ uint64_t ;
struct bio {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
struct TYPE_15__ {TYPE_2__* zvo_disk; int zvo_queue; int zvo_kstat; } ;
struct TYPE_14__ {int part0; } ;
struct TYPE_12__ {scalar_t__ os_sync; } ;


 int ASSERT (int ) ;
 int BIO_END_IO (struct bio*,int) ;
 int DMU_MAX_ACCESS ;
 scalar_t__ MIN (scalar_t__,int) ;
 int TXG_WAIT ;
 int WRITE ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZVOL_OBJ ;
 scalar_t__ bio_is_fua (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int blk_generic_end_io_acct (int ,int ,int *,unsigned long) ;
 int blk_generic_start_io_acct (int ,int ,int ,int *) ;
 int dataset_kstats_update_write_kstats (int *,scalar_t__) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_11__*) ;
 int dmu_tx_hold_write (int *,int ,scalar_t__,scalar_t__) ;
 int dmu_write_uio_dnode (int ,TYPE_6__*,scalar_t__,int *) ;
 unsigned long jiffies ;
 int kmem_free (TYPE_5__*,int) ;
 int rw_exit (int *) ;
 int task_io_account_write (scalar_t__) ;
 int uio_from_bio (TYPE_6__*,struct bio*) ;
 int zfs_rangelock_exit (int ) ;
 int zil_commit (int *,int ) ;
 int zvol_log_write (TYPE_4__*,int *,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
zvol_write(void *arg)
{
 int error = 0;

 zv_request_t *zvr = arg;
 struct bio *bio = zvr->bio;
 uio_t uio = { { 0 }, 0 };
 uio_from_bio(&uio, bio);

 zvol_state_t *zv = zvr->zv;
 ASSERT(zv && zv->zv_open_count > 0);
 ASSERT(zv->zv_zilog != ((void*)0));

 ssize_t start_resid = uio.uio_resid;
 unsigned long start_jif = jiffies;
 blk_generic_start_io_acct(zv->zv_zso->zvo_queue, WRITE,
     bio_sectors(bio), &zv->zv_zso->zvo_disk->part0);

 boolean_t sync =
     bio_is_fua(bio) || zv->zv_objset->os_sync == ZFS_SYNC_ALWAYS;

 uint64_t volsize = zv->zv_volsize;
 while (uio.uio_resid > 0 && uio.uio_loffset < volsize) {
  uint64_t bytes = MIN(uio.uio_resid, DMU_MAX_ACCESS >> 1);
  uint64_t off = uio.uio_loffset;
  dmu_tx_t *tx = dmu_tx_create(zv->zv_objset);

  if (bytes > volsize - off)
   bytes = volsize - off;

  dmu_tx_hold_write(tx, ZVOL_OBJ, off, bytes);


  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   dmu_tx_abort(tx);
   break;
  }
  error = dmu_write_uio_dnode(zv->zv_dn, &uio, bytes, tx);
  if (error == 0) {
   zvol_log_write(zv, tx, off, bytes, sync);
  }
  dmu_tx_commit(tx);

  if (error)
   break;
 }
 zfs_rangelock_exit(zvr->lr);

 int64_t nwritten = start_resid - uio.uio_resid;
 dataset_kstats_update_write_kstats(&zv->zv_zso->zvo_kstat, nwritten);
 task_io_account_write(nwritten);

 if (sync)
  zil_commit(zv->zv_zilog, ZVOL_OBJ);

 rw_exit(&zv->zv_suspend_lock);
 blk_generic_end_io_acct(zv->zv_zso->zvo_queue,
     WRITE, &zv->zv_zso->zvo_disk->part0, start_jif);
 BIO_END_IO(bio, -error);
 kmem_free(zvr, sizeof (zv_request_t));
}
