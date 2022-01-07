
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_28__ ;
typedef struct TYPE_37__ TYPE_1__ ;


struct TYPE_39__ {char z_size; int z_sa_hdl; int z_lock; scalar_t__ z_is_sa; int z_id; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_40__ {TYPE_28__* z_os; int z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int * z_log; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
struct TYPE_41__ {TYPE_1__* z_aclp; } ;
typedef TYPE_4__ zfs_acl_ids_t ;
struct TYPE_42__ {int va_mode; } ;
typedef TYPE_5__ vattr_t ;
typedef scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_38__ {scalar_t__ os_sync; } ;
struct TYPE_37__ {scalar_t__ z_acl_bytes; } ;


 int ACE_ADD_FILE ;
 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_NEW_OBJECT ;
 int EDQUOT ;
 int EILSEQ ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ERESTART ;
 int FIGNORECASE ;
 TYPE_2__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 scalar_t__ MAX (int,scalar_t__) ;
 scalar_t__ MAXPATHLEN ;
 int SA_ZPL_SIZE (TYPE_3__*) ;
 int SA_ZPL_SYMLINK (TYPE_3__*) ;
 int SET_ERROR (int ) ;
 int S_ISLNK (int ) ;
 int TRUE ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 scalar_t__ TX_CI ;
 scalar_t__ TX_SYMLINK ;
 int U8_VALIDATE_ENTIRE ;
 int ZCILOOK ;
 scalar_t__ ZFS_ACE_SPACE ;
 int ZFS_DEFAULT_PROJID ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int ZNEW ;
 struct inode* ZTOI (TYPE_2__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_28__*) ;
 int dmu_tx_hold_sa (int *,int ,scalar_t__) ;
 int dmu_tx_hold_sa_create (int *,scalar_t__) ;
 int dmu_tx_hold_write (int *,int ,int ,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_wait (int *) ;
 int iput (struct inode*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int remove_inode_hash (struct inode*) ;
 int sa_update (int ,int ,char*,int,int *) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ u8_validate (char*,scalar_t__,int *,int ,int*) ;
 int zfs_acl_ids_create (TYPE_2__*,int ,TYPE_5__*,int *,int *,TYPE_4__*) ;
 int zfs_acl_ids_free (TYPE_4__*) ;
 scalar_t__ zfs_acl_ids_overquota (TYPE_3__*,TYPE_4__*,int ) ;
 int zfs_dirent_lock (int **,TYPE_2__*,char*,TYPE_2__**,int,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_fuid_sync (TYPE_3__*,int *) ;
 int zfs_fuid_txhold (TYPE_3__*,int *) ;
 int zfs_inode_update (TYPE_2__*) ;
 int zfs_link_create (int *,TYPE_2__*,int *,int) ;
 int zfs_log_symlink (int *,int *,scalar_t__,TYPE_2__*,TYPE_2__*,char*,char*) ;
 int zfs_mknode (TYPE_2__*,TYPE_5__*,int *,int *,int ,TYPE_2__**,TYPE_4__*) ;
 int zfs_sa_symlink (TYPE_2__*,char*,scalar_t__,int *) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,scalar_t__,int *) ;
 int zfs_znode_delete (TYPE_2__*,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_symlink(struct inode *dip, char *name, vattr_t *vap, char *link,
    struct inode **ipp, cred_t *cr, int flags)
{
 znode_t *zp, *dzp = ITOZ(dip);
 zfs_dirlock_t *dl;
 dmu_tx_t *tx;
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 zilog_t *zilog;
 uint64_t len = strlen(link);
 int error;
 int zflg = ZNEW;
 zfs_acl_ids_t acl_ids;
 boolean_t fuid_dirtied;
 uint64_t txtype = TX_SYMLINK;
 boolean_t waited = B_FALSE;

 ASSERT(S_ISLNK(vap->va_mode));

 if (name == ((void*)0))
  return (SET_ERROR(EINVAL));

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 zilog = zfsvfs->z_log;

 if (zfsvfs->z_utf8 && u8_validate(name, strlen(name),
     ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }
 if (flags & FIGNORECASE)
  zflg |= ZCILOOK;

 if (len > MAXPATHLEN) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENAMETOOLONG));
 }

 if ((error = zfs_acl_ids_create(dzp, 0,
     vap, cr, ((void*)0), &acl_ids)) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }
top:
 *ipp = ((void*)0);




 error = zfs_dirent_lock(&dl, dzp, name, &zp, zflg, ((void*)0), ((void*)0));
 if (error) {
  zfs_acl_ids_free(&acl_ids);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if ((error = zfs_zaccess(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
  zfs_acl_ids_free(&acl_ids);
  zfs_dirent_unlock(dl);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (zfs_acl_ids_overquota(zfsvfs, &acl_ids, ZFS_DEFAULT_PROJID)) {
  zfs_acl_ids_free(&acl_ids);
  zfs_dirent_unlock(dl);
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EDQUOT));
 }
 tx = dmu_tx_create(zfsvfs->z_os);
 fuid_dirtied = zfsvfs->z_fuid_dirty;
 dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0, MAX(1, len));
 dmu_tx_hold_zap(tx, dzp->z_id, TRUE, name);
 dmu_tx_hold_sa_create(tx, acl_ids.z_aclp->z_acl_bytes +
     ZFS_SA_BASE_ATTR_SIZE + len);
 dmu_tx_hold_sa(tx, dzp->z_sa_hdl, B_FALSE);
 if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
  dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0,
      acl_ids.z_aclp->z_acl_bytes);
 }
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);
 error = dmu_tx_assign(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
 if (error) {
  zfs_dirent_unlock(dl);
  if (error == ERESTART) {
   waited = B_TRUE;
   dmu_tx_wait(tx);
   dmu_tx_abort(tx);
   goto top;
  }
  zfs_acl_ids_free(&acl_ids);
  dmu_tx_abort(tx);
  ZFS_EXIT(zfsvfs);
  return (error);
 }





 zfs_mknode(dzp, vap, tx, cr, 0, &zp, &acl_ids);

 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);

 mutex_enter(&zp->z_lock);
 if (zp->z_is_sa)
  error = sa_update(zp->z_sa_hdl, SA_ZPL_SYMLINK(zfsvfs),
      link, len, tx);
 else
  zfs_sa_symlink(zp, link, len, tx);
 mutex_exit(&zp->z_lock);

 zp->z_size = len;
 (void) sa_update(zp->z_sa_hdl, SA_ZPL_SIZE(zfsvfs),
     &zp->z_size, sizeof (zp->z_size), tx);



 error = zfs_link_create(dl, zp, tx, ZNEW);
 if (error != 0) {
  zfs_znode_delete(zp, tx);
  remove_inode_hash(ZTOI(zp));
 } else {
  if (flags & FIGNORECASE)
   txtype |= TX_CI;
  zfs_log_symlink(zilog, tx, txtype, dzp, zp, name, link);

  zfs_inode_update(dzp);
  zfs_inode_update(zp);
 }

 zfs_acl_ids_free(&acl_ids);

 dmu_tx_commit(tx);

 zfs_dirent_unlock(dl);

 if (error == 0) {
  *ipp = ZTOI(zp);

  if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
   zil_commit(zilog, 0);
 } else {
  iput(ZTOI(zp));
 }

 ZFS_EXIT(zfsvfs);
 return (error);
}
