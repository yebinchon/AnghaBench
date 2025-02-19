
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_30__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


struct TYPE_38__ {int z_pflags; int z_id; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_40__ {scalar_t__ z_use_fuids; TYPE_30__* z_os; int z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int * z_log; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
struct TYPE_41__ {int z_fuidp; TYPE_1__* z_aclp; } ;
typedef TYPE_4__ zfs_acl_ids_t ;
typedef int xvattr_t ;
typedef int vsecattr_t ;
struct TYPE_42__ {int va_mask; int va_mode; } ;
typedef TYPE_5__ vattr_t ;
typedef int uint64_t ;
typedef int uid_t ;
struct inode {int dummy; } ;
typedef int gid_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_39__ {scalar_t__ os_sync; } ;
struct TYPE_37__ {scalar_t__ z_acl_bytes; } ;


 int ACE_ADD_SUBDIRECTORY ;
 int ASSERT (int ) ;
 int ATTR_XVATTR ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_NEW_OBJECT ;
 int EDQUOT ;
 int EILSEQ ;
 int EINVAL ;
 int ERESTART ;
 int FALSE ;
 int FIGNORECASE ;
 scalar_t__ IS_EPHEMERAL (int ) ;
 TYPE_2__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 int S_ISDIR (int ) ;
 int TRUE ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 int TX_CI ;
 int U8_VALIDATE_ENTIRE ;
 int ZCILOOK ;
 scalar_t__ ZFS_ACE_SPACE ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int ZFS_XATTR ;
 int ZNEW ;
 struct inode* ZTOI (TYPE_2__*) ;
 int Z_DIR ;
 int crgetgid (int *) ;
 int crgetuid (int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_30__*) ;
 int dmu_tx_hold_sa_create (int *,scalar_t__) ;
 int dmu_tx_hold_write (int *,int ,int ,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_wait (int *) ;
 int iput (struct inode*) ;
 int remove_inode_hash (struct inode*) ;
 int secpolicy_xvattr (int *,int ,int *,int ) ;
 int strlen (char*) ;
 scalar_t__ u8_validate (char*,int ,int *,int ,int*) ;
 int zfs_acl_ids_create (TYPE_2__*,int ,TYPE_5__*,int *,int *,TYPE_4__*) ;
 int zfs_acl_ids_free (TYPE_4__*) ;
 scalar_t__ zfs_acl_ids_overquota (TYPE_3__*,TYPE_4__*,int ) ;
 int zfs_dirent_lock (int **,TYPE_2__*,char*,TYPE_2__**,int,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_fuid_sync (TYPE_3__*,int *) ;
 int zfs_fuid_txhold (TYPE_3__*,int *) ;
 int zfs_inherit_projid (TYPE_2__*) ;
 int zfs_inode_update (TYPE_2__*) ;
 int zfs_link_create (int *,TYPE_2__*,int *,int) ;
 int zfs_log_create (int *,int *,int ,TYPE_2__*,TYPE_2__*,char*,int *,int ,TYPE_5__*) ;
 int zfs_log_create_txtype (int ,int *,TYPE_5__*) ;
 int zfs_mknode (TYPE_2__*,TYPE_5__*,int *,int *,int ,TYPE_2__**,TYPE_4__*) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,scalar_t__,int *) ;
 int zfs_znode_delete (TYPE_2__*,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_mkdir(struct inode *dip, char *dirname, vattr_t *vap, struct inode **ipp,
    cred_t *cr, int flags, vsecattr_t *vsecp)
{
 znode_t *zp, *dzp = ITOZ(dip);
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 zilog_t *zilog;
 zfs_dirlock_t *dl;
 uint64_t txtype;
 dmu_tx_t *tx;
 int error;
 int zf = ZNEW;
 uid_t uid;
 gid_t gid = crgetgid(cr);
 zfs_acl_ids_t acl_ids;
 boolean_t fuid_dirtied;
 boolean_t waited = B_FALSE;

 ASSERT(S_ISDIR(vap->va_mode));






 uid = crgetuid(cr);
 if (zfsvfs->z_use_fuids == B_FALSE &&
     (vsecp || IS_EPHEMERAL(uid) || IS_EPHEMERAL(gid)))
  return (SET_ERROR(EINVAL));

 if (dirname == ((void*)0))
  return (SET_ERROR(EINVAL));

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 zilog = zfsvfs->z_log;

 if (dzp->z_pflags & ZFS_XATTR) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }

 if (zfsvfs->z_utf8 && u8_validate(dirname,
     strlen(dirname), ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }
 if (flags & FIGNORECASE)
  zf |= ZCILOOK;

 if (vap->va_mask & ATTR_XVATTR) {
  if ((error = secpolicy_xvattr((xvattr_t *)vap,
      crgetuid(cr), cr, vap->va_mode)) != 0) {
   ZFS_EXIT(zfsvfs);
   return (error);
  }
 }

 if ((error = zfs_acl_ids_create(dzp, 0, vap, cr,
     vsecp, &acl_ids)) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }







top:
 *ipp = ((void*)0);

 if ((error = zfs_dirent_lock(&dl, dzp, dirname, &zp, zf,
     ((void*)0), ((void*)0)))) {
  zfs_acl_ids_free(&acl_ids);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if ((error = zfs_zaccess(dzp, ACE_ADD_SUBDIRECTORY, 0, B_FALSE, cr))) {
  zfs_acl_ids_free(&acl_ids);
  zfs_dirent_unlock(dl);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (zfs_acl_ids_overquota(zfsvfs, &acl_ids, zfs_inherit_projid(dzp))) {
  zfs_acl_ids_free(&acl_ids);
  zfs_dirent_unlock(dl);
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EDQUOT));
 }




 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_zap(tx, dzp->z_id, TRUE, dirname);
 dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, FALSE, ((void*)0));
 fuid_dirtied = zfsvfs->z_fuid_dirty;
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);
 if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
  dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0,
      acl_ids.z_aclp->z_acl_bytes);
 }

 dmu_tx_hold_sa_create(tx, acl_ids.z_aclp->z_acl_bytes +
     ZFS_SA_BASE_ATTR_SIZE);

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




 error = zfs_link_create(dl, zp, tx, ZNEW);
 if (error != 0) {
  zfs_znode_delete(zp, tx);
  remove_inode_hash(ZTOI(zp));
  goto out;
 }

 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);

 *ipp = ZTOI(zp);

 txtype = zfs_log_create_txtype(Z_DIR, vsecp, vap);
 if (flags & FIGNORECASE)
  txtype |= TX_CI;
 zfs_log_create(zilog, tx, txtype, dzp, zp, dirname, vsecp,
     acl_ids.z_fuidp, vap);

out:
 zfs_acl_ids_free(&acl_ids);

 dmu_tx_commit(tx);

 zfs_dirent_unlock(dl);

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 if (error != 0) {
  iput(ZTOI(zp));
 } else {
  zfs_inode_update(dzp);
  zfs_inode_update(zp);
 }
 ZFS_EXIT(zfsvfs);
 return (error);
}
