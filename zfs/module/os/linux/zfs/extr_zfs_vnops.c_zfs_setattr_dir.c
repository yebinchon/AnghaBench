
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ z_projid; int z_pflags; int z_sa_hdl; int z_lock; int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_15__ {int * z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
typedef int zap_cursor_t ;
struct TYPE_16__ {int za_integer_length; int za_num_integers; scalar_t__ za_name; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int uint64_t ;
typedef int uid ;
struct inode {int i_gid; int i_uid; } ;
typedef int sa_bulk_attr_t ;
typedef int objset_t ;
typedef int gid ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ENOENT ;
 int ENXIO ;
 TYPE_2__* ITOZSB (struct inode*) ;
 scalar_t__ KGID_TO_SGID (int ) ;
 scalar_t__ KUID_TO_SUID (int ) ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int*,int) ;
 int SA_ZPL_FLAGS (TYPE_2__*) ;
 int SA_ZPL_GID (TYPE_2__*) ;
 int SA_ZPL_PROJID (TYPE_2__*) ;
 int SA_ZPL_UID (TYPE_2__*) ;
 int TXG_WAIT ;
 int ZEXISTS ;
 int ZFS_PROJID ;
 struct inode* ZTOI (TYPE_1__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int iput (struct inode*) ;
 scalar_t__ likely (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update (int ,int *,int,int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 int zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zfs_dirent_lock (int **,TYPE_1__*,char*,TYPE_1__**,int ,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_gid_read (struct inode*) ;
 int zfs_uid_read (struct inode*) ;

__attribute__((used)) static int
zfs_setattr_dir(znode_t *dzp)
{
 struct inode *dxip = ZTOI(dzp);
 struct inode *xip = ((void*)0);
 zfsvfs_t *zfsvfs = ITOZSB(dxip);
 objset_t *os = zfsvfs->z_os;
 zap_cursor_t zc;
 zap_attribute_t zap;
 zfs_dirlock_t *dl;
 znode_t *zp;
 dmu_tx_t *tx = ((void*)0);
 uint64_t uid, gid;
 sa_bulk_attr_t bulk[4];
 int count;
 int err;

 zap_cursor_init(&zc, os, dzp->z_id);
 while ((err = zap_cursor_retrieve(&zc, &zap)) == 0) {
  count = 0;
  if (zap.za_integer_length != 8 || zap.za_num_integers != 1) {
   err = ENXIO;
   break;
  }

  err = zfs_dirent_lock(&dl, dzp, (char *)zap.za_name, &zp,
      ZEXISTS, ((void*)0), ((void*)0));
  if (err == ENOENT)
   goto next;
  if (err)
   break;

  xip = ZTOI(zp);
  if (KUID_TO_SUID(xip->i_uid) == KUID_TO_SUID(dxip->i_uid) &&
      KGID_TO_SGID(xip->i_gid) == KGID_TO_SGID(dxip->i_gid) &&
      zp->z_projid == dzp->z_projid)
   goto next;

  tx = dmu_tx_create(os);
  if (!(zp->z_pflags & ZFS_PROJID))
   dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_TRUE);
  else
   dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);

  err = dmu_tx_assign(tx, TXG_WAIT);
  if (err)
   break;

  mutex_enter(&dzp->z_lock);

  if (KUID_TO_SUID(xip->i_uid) != KUID_TO_SUID(dxip->i_uid)) {
   xip->i_uid = dxip->i_uid;
   uid = zfs_uid_read(dxip);
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_UID(zfsvfs), ((void*)0),
       &uid, sizeof (uid));
  }

  if (KGID_TO_SGID(xip->i_gid) != KGID_TO_SGID(dxip->i_gid)) {
   xip->i_gid = dxip->i_gid;
   gid = zfs_gid_read(dxip);
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_GID(zfsvfs), ((void*)0),
       &gid, sizeof (gid));
  }

  if (zp->z_projid != dzp->z_projid) {
   if (!(zp->z_pflags & ZFS_PROJID)) {
    zp->z_pflags |= ZFS_PROJID;
    SA_ADD_BULK_ATTR(bulk, count,
        SA_ZPL_FLAGS(zfsvfs), ((void*)0), &zp->z_pflags,
        sizeof (zp->z_pflags));
   }

   zp->z_projid = dzp->z_projid;
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_PROJID(zfsvfs),
       ((void*)0), &zp->z_projid, sizeof (zp->z_projid));
  }

  mutex_exit(&dzp->z_lock);

  if (likely(count > 0)) {
   err = sa_bulk_update(zp->z_sa_hdl, bulk, count, tx);
   dmu_tx_commit(tx);
  } else {
   dmu_tx_abort(tx);
  }
  tx = ((void*)0);
  if (err != 0 && err != ENOENT)
   break;

next:
  if (xip) {
   iput(xip);
   xip = ((void*)0);
   zfs_dirent_unlock(dl);
  }
  zap_cursor_advance(&zc);
 }

 if (tx)
  dmu_tx_abort(tx);
 if (xip) {
  iput(xip);
  zfs_dirent_unlock(dl);
 }
 zap_cursor_fini(&zc);

 return (err == ENOENT ? 0 : err);
}
