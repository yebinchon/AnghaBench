
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ z_unlinked; int z_lock; scalar_t__ z_atime_dirty; int * z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_9__ {int z_teardown_inactive_lock; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint64_t ;
struct inode {int i_atime; } ;
typedef int dmu_tx_t ;
typedef int atime ;


 scalar_t__ B_FALSE ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int RW_READER ;
 int RW_WRITE_HELD (int *) ;
 int SA_ZPL_ATIME (TYPE_2__*) ;
 int TXG_WAIT ;
 int ZFS_TIME_ENCODE (int *,int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int *,scalar_t__) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int sa_update (int *,int ,void*,int,int *) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zinactive (TYPE_1__*) ;

void
zfs_inactive(struct inode *ip)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 uint64_t atime[2];
 int error;
 int need_unlock = 0;


 if (!RW_WRITE_HELD(&zfsvfs->z_teardown_inactive_lock)) {
  need_unlock = 1;
  rw_enter(&zfsvfs->z_teardown_inactive_lock, RW_READER);
 }
 if (zp->z_sa_hdl == ((void*)0)) {
  if (need_unlock)
   rw_exit(&zfsvfs->z_teardown_inactive_lock);
  return;
 }

 if (zp->z_atime_dirty && zp->z_unlinked == B_FALSE) {
  dmu_tx_t *tx = dmu_tx_create(zfsvfs->z_os);

  dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
  zfs_sa_upgrade_txholds(tx, zp);
  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   dmu_tx_abort(tx);
  } else {
   ZFS_TIME_ENCODE(&ip->i_atime, atime);
   mutex_enter(&zp->z_lock);
   (void) sa_update(zp->z_sa_hdl, SA_ZPL_ATIME(zfsvfs),
       (void *)&atime, sizeof (atime), tx);
   zp->z_atime_dirty = B_FALSE;
   mutex_exit(&zp->z_lock);
   dmu_tx_commit(tx);
  }
 }

 zfs_zinactive(zp);
 if (need_unlock)
  rw_exit(&zfsvfs->z_teardown_inactive_lock);
}
