
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int z_pflags; scalar_t__ z_size; int z_blksz; int z_sa_hdl; scalar_t__ z_is_mapped; int z_rangelock; int z_id; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_18__ {int z_kstat; scalar_t__ z_log; TYPE_1__* z_os; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int zfs_locked_range_t ;
struct TYPE_19__ {scalar_t__ xu_type; } ;
typedef TYPE_4__ xuio_t ;
struct TYPE_20__ {scalar_t__ uio_loffset; int uio_resid; scalar_t__ uio_extflg; } ;
typedef TYPE_5__ uio_t ;
typedef int uint64_t ;
struct inode {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ offset_t ;
typedef int int64_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_16__ {scalar_t__ os_sync; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int EACCES ;
 int ECKSUM ;
 int EINVAL ;
 int EIO ;
 int FRSYNC ;
 scalar_t__ ISP2 (int) ;
 TYPE_2__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int MIN (int,scalar_t__) ;
 int O_DIRECT ;
 int P2ALIGN (int,int) ;
 scalar_t__ P2PHASE (int,scalar_t__) ;
 int P2ROUNDUP (int,int) ;
 int RL_READER ;
 int SET_ERROR (int ) ;
 scalar_t__ UIOTYPE_ZEROCOPY ;
 scalar_t__ UIO_XUIO ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int dataset_kstats_update_read_kstats (int *,int) ;
 int dmu_read_uio_dbuf (int ,TYPE_5__*,int) ;
 int dmu_request_arcbuf (int ,int) ;
 int dmu_xuio_add (TYPE_4__*,int ,int ,int) ;
 int dmu_xuio_init (TYPE_4__*,int) ;
 int mappedread (struct inode*,int,TYPE_5__*) ;
 int sa_get_db (int ) ;
 int task_io_account_read (int) ;
 scalar_t__ vn_has_cached_data (struct inode*) ;
 int * zfs_rangelock_enter (int *,scalar_t__,int,int ) ;
 int zfs_rangelock_exit (int *) ;
 scalar_t__ zfs_read_chunk_size ;
 int zil_commit (scalar_t__,int ) ;

int
zfs_read(struct inode *ip, uio_t *uio, int ioflag, cred_t *cr)
{
 int error = 0;
 boolean_t frsync = B_FALSE;

 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (zp->z_pflags & ZFS_AV_QUARANTINED) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EACCES));
 }




 if (uio->uio_loffset < (offset_t)0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }




 if (uio->uio_resid == 0) {
  ZFS_EXIT(zfsvfs);
  return (0);
 }
 if (zfsvfs->z_log &&
     (frsync || zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS))
  zil_commit(zfsvfs->z_log, zp->z_id);




 zfs_locked_range_t *lr = zfs_rangelock_enter(&zp->z_rangelock,
     uio->uio_loffset, uio->uio_resid, RL_READER);





 if (uio->uio_loffset >= zp->z_size) {
  error = 0;
  goto out;
 }

 ASSERT(uio->uio_loffset < zp->z_size);
 ssize_t n = MIN(uio->uio_resid, zp->z_size - uio->uio_loffset);
 ssize_t start_resid = n;
 while (n > 0) {
  ssize_t nbytes = MIN(n, zfs_read_chunk_size -
      P2PHASE(uio->uio_loffset, zfs_read_chunk_size));

  if (zp->z_is_mapped && !(ioflag & O_DIRECT)) {
   error = mappedread(ip, nbytes, uio);
  } else {
   error = dmu_read_uio_dbuf(sa_get_db(zp->z_sa_hdl),
       uio, nbytes);
  }

  if (error) {

   if (error == ECKSUM)
    error = SET_ERROR(EIO);
   break;
  }

  n -= nbytes;
 }

 int64_t nread = start_resid - n;
 dataset_kstats_update_read_kstats(&zfsvfs->z_kstat, nread);
 task_io_account_read(nread);
out:
 zfs_rangelock_exit(lr);

 ZFS_EXIT(zfsvfs);
 return (error);
}
