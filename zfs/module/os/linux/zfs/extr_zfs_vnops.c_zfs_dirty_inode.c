
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int z_lock; int z_sa_hdl; int ******** z_mode; int z_atime_dirty; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_15__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int **** uint64_t ;
struct inode {int ******** i_mode; int i_ctime; int i_mtime; int i_atime; } ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int B_TRUE ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int I_DIRTY_TIME ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int ******,int) ;
 int SA_ZPL_ATIME (TYPE_2__*) ;
 int SA_ZPL_CTIME (TYPE_2__*) ;
 int SA_ZPL_MODE (TYPE_2__*) ;
 int SA_ZPL_MTIME (TYPE_2__*) ;
 int TXG_WAIT ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_TIME_ENCODE (int *,int *****) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 scalar_t__ dmu_objset_is_snapshot (int ) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update (int ,int *,int,int *) ;
 scalar_t__ zfs_is_readonly (TYPE_2__*) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;

int
zfs_dirty_inode(struct inode *ip, int flags)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 dmu_tx_t *tx;
 uint64_t mode, atime[2], mtime[2], ctime[2];
 sa_bulk_attr_t bulk[4];
 int error = 0;
 int cnt = 0;

 if (zfs_is_readonly(zfsvfs) || dmu_objset_is_snapshot(zfsvfs->z_os))
  return (0);

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);
 tx = dmu_tx_create(zfsvfs->z_os);

 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
 zfs_sa_upgrade_txholds(tx, zp);

 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
  goto out;
 }

 mutex_enter(&zp->z_lock);
 zp->z_atime_dirty = B_FALSE;

 SA_ADD_BULK_ATTR(bulk, cnt, SA_ZPL_MODE(zfsvfs), ((void*)0), &mode, 8);
 SA_ADD_BULK_ATTR(bulk, cnt, SA_ZPL_ATIME(zfsvfs), ((void*)0), &atime, 16);
 SA_ADD_BULK_ATTR(bulk, cnt, SA_ZPL_MTIME(zfsvfs), ((void*)0), &mtime, 16);
 SA_ADD_BULK_ATTR(bulk, cnt, SA_ZPL_CTIME(zfsvfs), ((void*)0), &ctime, 16);


 ZFS_TIME_ENCODE(&ip->i_atime, atime);
 ZFS_TIME_ENCODE(&ip->i_mtime, mtime);
 ZFS_TIME_ENCODE(&ip->i_ctime, ctime);
 mode = ip->i_mode;

 zp->z_mode = mode;

 error = sa_bulk_update(zp->z_sa_hdl, bulk, cnt, tx);
 mutex_exit(&zp->z_lock);

 dmu_tx_commit(tx);
out:
 ZFS_EXIT(zfsvfs);
 return (error);
}
