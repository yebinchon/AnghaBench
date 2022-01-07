
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_19__ {int z_name_lock; int z_parent_lock; int z_sa_hdl; int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_20__ {TYPE_11__* z_os; int z_unlinkedobj; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
typedef int uint64_t ;
struct inode {int i_mode; } ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_18__ {scalar_t__ os_sync; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EINVAL ;
 int ENOTDIR ;
 int ERESTART ;
 int FALSE ;
 int FIGNORECASE ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int S_ISDIR (int ) ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 int TX_CI ;
 int TX_RMDIR ;
 int ZCILOOK ;
 int ZEXISTS ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_NO_OBJECT ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 struct inode* ZTOI (TYPE_1__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_11__*) ;
 int dmu_tx_hold_sa (int *,int ,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_mark_netfree (int *) ;
 int dmu_tx_wait (int *) ;
 int iput (struct inode*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_dirent_lock (int **,TYPE_1__*,char*,TYPE_1__**,int,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_inode_update (TYPE_1__*) ;
 int zfs_link_destroy (int *,TYPE_1__*,int *,int,int *) ;
 int zfs_log_remove (int *,int *,int ,TYPE_1__*,char*,int ,scalar_t__) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zaccess_delete (TYPE_1__*,TYPE_1__*,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_rmdir(struct inode *dip, char *name, struct inode *cwd, cred_t *cr,
    int flags)
{
 znode_t *dzp = ITOZ(dip);
 znode_t *zp;
 struct inode *ip;
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 zilog_t *zilog;
 zfs_dirlock_t *dl;
 dmu_tx_t *tx;
 int error;
 int zflg = ZEXISTS;
 boolean_t waited = B_FALSE;

 if (name == ((void*)0))
  return (SET_ERROR(EINVAL));

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 zilog = zfsvfs->z_log;

 if (flags & FIGNORECASE)
  zflg |= ZCILOOK;
top:
 zp = ((void*)0);




 if ((error = zfs_dirent_lock(&dl, dzp, name, &zp, zflg,
     ((void*)0), ((void*)0)))) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 ip = ZTOI(zp);

 if ((error = zfs_zaccess_delete(dzp, zp, cr))) {
  goto out;
 }

 if (!S_ISDIR(ip->i_mode)) {
  error = SET_ERROR(ENOTDIR);
  goto out;
 }

 if (ip == cwd) {
  error = SET_ERROR(EINVAL);
  goto out;
 }





 rw_enter(&zp->z_name_lock, RW_WRITER);





 rw_enter(&zp->z_parent_lock, RW_WRITER);

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_zap(tx, dzp->z_id, FALSE, name);
 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
 dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));
 zfs_sa_upgrade_txholds(tx, zp);
 zfs_sa_upgrade_txholds(tx, dzp);
 dmu_tx_mark_netfree(tx);
 error = dmu_tx_assign(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
 if (error) {
  rw_exit(&zp->z_parent_lock);
  rw_exit(&zp->z_name_lock);
  zfs_dirent_unlock(dl);
  if (error == ERESTART) {
   waited = B_TRUE;
   dmu_tx_wait(tx);
   dmu_tx_abort(tx);
   iput(ip);
   goto top;
  }
  dmu_tx_abort(tx);
  iput(ip);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 error = zfs_link_destroy(dl, zp, tx, zflg, ((void*)0));

 if (error == 0) {
  uint64_t txtype = TX_RMDIR;
  if (flags & FIGNORECASE)
   txtype |= TX_CI;
  zfs_log_remove(zilog, tx, txtype, dzp, name, ZFS_NO_OBJECT,
      B_FALSE);
 }

 dmu_tx_commit(tx);

 rw_exit(&zp->z_parent_lock);
 rw_exit(&zp->z_name_lock);
out:
 zfs_dirent_unlock(dl);

 zfs_inode_update(dzp);
 zfs_inode_update(zp);
 iput(ip);

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}
