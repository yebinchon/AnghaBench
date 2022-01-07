
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


struct TYPE_41__ {int z_pflags; int z_lock; int z_seq; int z_sa_hdl; int z_id; } ;
typedef TYPE_2__ znode_t ;
typedef int zilog_t ;
struct TYPE_42__ {scalar_t__ z_use_fuids; TYPE_6__* z_os; int z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int * z_log; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
struct TYPE_43__ {int z_fuidp; TYPE_1__* z_aclp; } ;
typedef TYPE_4__ zfs_acl_ids_t ;
typedef int xvattr_t ;
typedef int vsecattr_t ;
struct TYPE_44__ {int va_mask; scalar_t__ va_size; int va_mode; } ;
typedef TYPE_5__ vattr_t ;
typedef int uint64_t ;
typedef int uid_t ;
struct inode {int i_mode; } ;
struct TYPE_45__ {scalar_t__ os_sync; } ;
typedef TYPE_6__ objset_t ;
typedef int gid_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_40__ {scalar_t__ z_acl_bytes; } ;


 int ACE_ADD_FILE ;
 int ATTR_SIZE ;
 int ATTR_XVATTR ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_NEW_OBJECT ;
 int EDQUOT ;
 int EEXIST ;
 int EILSEQ ;
 int EINVAL ;
 int EISDIR ;
 int ERESTART ;
 int FAPPEND ;
 int FIGNORECASE ;
 scalar_t__ IS_EPHEMERAL (int ) ;
 TYPE_2__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 int TX_CI ;
 int U8_VALIDATE_ENTIRE ;
 int V_APPEND ;
 int ZCILOOK ;
 scalar_t__ ZFS_ACE_SPACE ;
 int ZFS_DEFAULT_PROJID ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int ZFS_XATTR ;
 int ZNEW ;
 struct inode* ZTOI (TYPE_2__*) ;
 int Z_FILE ;
 int crgetgid (int *) ;
 int crgetuid (int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_6__*) ;
 int dmu_tx_hold_sa (int *,int ,scalar_t__) ;
 int dmu_tx_hold_sa_create (int *,scalar_t__) ;
 int dmu_tx_hold_write (int *,int ,int ,scalar_t__) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_wait (int *) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int remove_inode_hash (struct inode*) ;
 int secpolicy_xvattr (int *,int ,int *,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ u8_validate (char*,int ,int *,int ,int*) ;
 int zfs_acl_ids_create (TYPE_2__*,int ,TYPE_5__*,int *,int *,TYPE_4__*) ;
 int zfs_acl_ids_free (TYPE_4__*) ;
 scalar_t__ zfs_acl_ids_overquota (TYPE_3__*,TYPE_4__*,int ) ;
 int zfs_dirent_lock (int **,TYPE_2__*,char*,TYPE_2__**,int,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_freesp (TYPE_2__*,int ,int ,int,int ) ;
 int zfs_fuid_sync (TYPE_3__*,int *) ;
 int zfs_fuid_txhold (TYPE_3__*,int *) ;
 int zfs_inherit_projid (TYPE_2__*) ;
 int zfs_inode_update (TYPE_2__*) ;
 int zfs_link_create (int *,TYPE_2__*,int *,int ) ;
 int zfs_log_create (int *,int *,int ,TYPE_2__*,TYPE_2__*,char*,int *,int ,TYPE_5__*) ;
 int zfs_log_create_txtype (int ,int *,TYPE_5__*) ;
 int zfs_mknode (TYPE_2__*,TYPE_5__*,int *,int *,int ,TYPE_2__**,TYPE_4__*) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,scalar_t__,int *) ;
 int zfs_zaccess_rwx (TYPE_2__*,int,int,int *) ;
 int zfs_znode_delete (TYPE_2__*,int *) ;
 int zil_commit (int *,int ) ;

int
zfs_create(struct inode *dip, char *name, vattr_t *vap, int excl,
    int mode, struct inode **ipp, cred_t *cr, int flag, vsecattr_t *vsecp)
{
 znode_t *zp, *dzp = ITOZ(dip);
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 zilog_t *zilog;
 objset_t *os;
 zfs_dirlock_t *dl;
 dmu_tx_t *tx;
 int error;
 uid_t uid;
 gid_t gid;
 zfs_acl_ids_t acl_ids;
 boolean_t fuid_dirtied;
 boolean_t have_acl = B_FALSE;
 boolean_t waited = B_FALSE;






 gid = crgetgid(cr);
 uid = crgetuid(cr);

 if (zfsvfs->z_use_fuids == B_FALSE &&
     (vsecp || IS_EPHEMERAL(uid) || IS_EPHEMERAL(gid)))
  return (SET_ERROR(EINVAL));

 if (name == ((void*)0))
  return (SET_ERROR(EINVAL));

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 os = zfsvfs->z_os;
 zilog = zfsvfs->z_log;

 if (zfsvfs->z_utf8 && u8_validate(name, strlen(name),
     ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }

 if (vap->va_mask & ATTR_XVATTR) {
  if ((error = secpolicy_xvattr((xvattr_t *)vap,
      crgetuid(cr), cr, vap->va_mode)) != 0) {
   ZFS_EXIT(zfsvfs);
   return (error);
  }
 }

top:
 *ipp = ((void*)0);
 if (*name == '\0') {



  igrab(dip);
  zp = dzp;
  dl = ((void*)0);
  error = 0;
 } else {

  int zflg = 0;

  if (flag & FIGNORECASE)
   zflg |= ZCILOOK;

  error = zfs_dirent_lock(&dl, dzp, name, &zp, zflg,
      ((void*)0), ((void*)0));
  if (error) {
   if (have_acl)
    zfs_acl_ids_free(&acl_ids);
   if (strcmp(name, "..") == 0)
    error = SET_ERROR(EISDIR);
   ZFS_EXIT(zfsvfs);
   return (error);
  }
 }

 if (zp == ((void*)0)) {
  uint64_t txtype;
  uint64_t projid = ZFS_DEFAULT_PROJID;





  if ((error = zfs_zaccess(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
   if (have_acl)
    zfs_acl_ids_free(&acl_ids);
   goto out;
  }






  if ((dzp->z_pflags & ZFS_XATTR) && !S_ISREG(vap->va_mode)) {
   if (have_acl)
    zfs_acl_ids_free(&acl_ids);
   error = SET_ERROR(EINVAL);
   goto out;
  }

  if (!have_acl && (error = zfs_acl_ids_create(dzp, 0, vap,
      cr, vsecp, &acl_ids)) != 0)
   goto out;
  have_acl = B_TRUE;

  if (S_ISREG(vap->va_mode) || S_ISDIR(vap->va_mode))
   projid = zfs_inherit_projid(dzp);
  if (zfs_acl_ids_overquota(zfsvfs, &acl_ids, projid)) {
   zfs_acl_ids_free(&acl_ids);
   error = SET_ERROR(EDQUOT);
   goto out;
  }

  tx = dmu_tx_create(os);

  dmu_tx_hold_sa_create(tx, acl_ids.z_aclp->z_acl_bytes +
      ZFS_SA_BASE_ATTR_SIZE);

  fuid_dirtied = zfsvfs->z_fuid_dirty;
  if (fuid_dirtied)
   zfs_fuid_txhold(zfsvfs, tx);
  dmu_tx_hold_zap(tx, dzp->z_id, TRUE, name);
  dmu_tx_hold_sa(tx, dzp->z_sa_hdl, B_FALSE);
  if (!zfsvfs->z_use_sa &&
      acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
   dmu_tx_hold_write(tx, DMU_NEW_OBJECT,
       0, acl_ids.z_aclp->z_acl_bytes);
  }

  error = dmu_tx_assign(tx,
      (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
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
   zfs_acl_ids_free(&acl_ids);
   dmu_tx_commit(tx);
   goto out;
  }

  if (fuid_dirtied)
   zfs_fuid_sync(zfsvfs, tx);

  txtype = zfs_log_create_txtype(Z_FILE, vsecp, vap);
  if (flag & FIGNORECASE)
   txtype |= TX_CI;
  zfs_log_create(zilog, tx, txtype, dzp, zp, name,
      vsecp, acl_ids.z_fuidp, vap);
  zfs_acl_ids_free(&acl_ids);
  dmu_tx_commit(tx);
 } else {
  int aflags = (flag & FAPPEND) ? V_APPEND : 0;

  if (have_acl)
   zfs_acl_ids_free(&acl_ids);
  have_acl = B_FALSE;







  if (excl) {
   error = SET_ERROR(EEXIST);
   goto out;
  }



  if (S_ISDIR(ZTOI(zp)->i_mode)) {
   error = SET_ERROR(EISDIR);
   goto out;
  }



  if (mode && (error = zfs_zaccess_rwx(zp, mode, aflags, cr))) {
   goto out;
  }

  mutex_enter(&dzp->z_lock);
  dzp->z_seq++;
  mutex_exit(&dzp->z_lock);




  if (S_ISREG(ZTOI(zp)->i_mode) &&
      (vap->va_mask & ATTR_SIZE) && (vap->va_size == 0)) {

   if (dl) {
    zfs_dirent_unlock(dl);
    dl = ((void*)0);
   }
   error = zfs_freesp(zp, 0, 0, mode, TRUE);
  }
 }
out:

 if (dl)
  zfs_dirent_unlock(dl);

 if (error) {
  if (zp)
   iput(ZTOI(zp));
 } else {
  zfs_inode_update(dzp);
  zfs_inode_update(zp);
  *ipp = ZTOI(zp);
 }

 if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 ZFS_EXIT(zfsvfs);
 return (error);
}
