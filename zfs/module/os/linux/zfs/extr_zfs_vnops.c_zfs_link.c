
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_12__ ;


struct TYPE_22__ {int z_pflags; scalar_t__ z_projid; void* z_unlinked; int z_id; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_23__ {scalar_t__ z_shares_dir; TYPE_12__* z_os; int z_unlinkedobj; scalar_t__ z_utf8; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zfs_dirlock_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uid_t ;
struct inode {scalar_t__ i_nlink; int i_state; scalar_t__ i_sb; int i_uid; int i_mode; } ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_21__ {scalar_t__ os_sync; } ;


 int ACE_ADD_FILE ;
 int ASSERT (scalar_t__) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int EILSEQ ;
 int EINVAL ;
 int EPERM ;
 int ERESTART ;
 int EXDEV ;
 int FALSE ;
 int FIGNORECASE ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int I_LINKABLE ;
 int KUID_TO_SUID (int ) ;
 int SA_ZPL_PARENT (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int TXG_NOTHROTTLE ;
 int TXG_NOWAIT ;
 scalar_t__ TX_CI ;
 scalar_t__ TX_LINK ;
 int U8_VALIDATE_ENTIRE ;
 int VERIFY (int) ;
 int ZCILOOK ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_OWNER ;
 int ZFS_PROJINHERIT ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int ZFS_XATTR ;
 int ZNEW ;
 scalar_t__ crgetuid (int *) ;
 int dmu_objset_pool (TYPE_12__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_12__*) ;
 scalar_t__ dmu_tx_get_txg (int *) ;
 int dmu_tx_hold_sa (int *,int ,void*) ;
 int dmu_tx_hold_zap (int *,int ,int ,char*) ;
 int dmu_tx_wait (int *) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 scalar_t__ secpolicy_basic_link (int *) ;
 int strlen (char*) ;
 int txg_wait_synced (int ,scalar_t__) ;
 scalar_t__ u8_validate (char*,int ,int *,int ,int*) ;
 scalar_t__ zap_remove_int (TYPE_12__*,int ,int ,int *) ;
 int zfs_dirent_lock (int **,TYPE_1__*,char*,TYPE_1__**,int,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 scalar_t__ zfs_fuid_map_id (TYPE_2__*,int ,int *,int ) ;
 int zfs_inode_update (TYPE_1__*) ;
 int zfs_link_create (int *,TYPE_1__*,int *,int ) ;
 int zfs_log_link (int *,int *,scalar_t__,TYPE_1__*,TYPE_1__*,char*) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zaccess (TYPE_1__*,int ,int ,void*,int *) ;
 scalar_t__ zfsctl_is_node (struct inode*) ;
 int zil_commit (int *,int ) ;

int
zfs_link(struct inode *tdip, struct inode *sip, char *name, cred_t *cr,
    int flags)
{
 znode_t *dzp = ITOZ(tdip);
 znode_t *tzp, *szp;
 zfsvfs_t *zfsvfs = ITOZSB(tdip);
 zilog_t *zilog;
 zfs_dirlock_t *dl;
 dmu_tx_t *tx;
 int error;
 int zf = ZNEW;
 uint64_t parent;
 uid_t owner;
 boolean_t waited = B_FALSE;
 boolean_t is_tmpfile = 0;
 uint64_t txg;



 ASSERT(S_ISDIR(tdip->i_mode));

 if (name == ((void*)0))
  return (SET_ERROR(EINVAL));

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(dzp);
 zilog = zfsvfs->z_log;





 if (S_ISDIR(sip->i_mode)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EPERM));
 }

 szp = ITOZ(sip);
 ZFS_VERIFY_ZP(szp);
 if (dzp->z_pflags & ZFS_PROJINHERIT && dzp->z_projid != szp->z_projid) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EXDEV));
 }





 if (sip->i_sb != tdip->i_sb || zfsctl_is_node(sip)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EXDEV));
 }



 if ((error = sa_lookup(szp->z_sa_hdl, SA_ZPL_PARENT(zfsvfs),
     &parent, sizeof (uint64_t))) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }
 if (parent == zfsvfs->z_shares_dir) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EPERM));
 }

 if (zfsvfs->z_utf8 && u8_validate(name,
     strlen(name), ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }
 if (flags & FIGNORECASE)
  zf |= ZCILOOK;







 if ((szp->z_pflags & ZFS_XATTR) != (dzp->z_pflags & ZFS_XATTR)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }

 owner = zfs_fuid_map_id(zfsvfs, KUID_TO_SUID(sip->i_uid),
     cr, ZFS_OWNER);
 if (owner != crgetuid(cr) && secpolicy_basic_link(cr) != 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EPERM));
 }

 if ((error = zfs_zaccess(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

top:



 error = zfs_dirent_lock(&dl, dzp, name, &tzp, zf, ((void*)0), ((void*)0));
 if (error) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_sa(tx, szp->z_sa_hdl, B_FALSE);
 dmu_tx_hold_zap(tx, dzp->z_id, TRUE, name);
 if (is_tmpfile)
  dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));

 zfs_sa_upgrade_txholds(tx, szp);
 zfs_sa_upgrade_txholds(tx, dzp);
 error = dmu_tx_assign(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
 if (error) {
  zfs_dirent_unlock(dl);
  if (error == ERESTART) {
   waited = B_TRUE;
   dmu_tx_wait(tx);
   dmu_tx_abort(tx);
   goto top;
  }
  dmu_tx_abort(tx);
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (is_tmpfile)
  szp->z_unlinked = B_FALSE;
 error = zfs_link_create(dl, szp, tx, 0);

 if (error == 0) {
  uint64_t txtype = TX_LINK;







  if (is_tmpfile) {
   VERIFY(zap_remove_int(zfsvfs->z_os,
       zfsvfs->z_unlinkedobj, szp->z_id, tx) == 0);
  } else {
   if (flags & FIGNORECASE)
    txtype |= TX_CI;
   zfs_log_link(zilog, tx, txtype, dzp, szp, name);
  }
 } else if (is_tmpfile) {

  szp->z_unlinked = B_TRUE;
 }
 txg = dmu_tx_get_txg(tx);
 dmu_tx_commit(tx);

 zfs_dirent_unlock(dl);

 if (!is_tmpfile && zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
  zil_commit(zilog, 0);

 if (is_tmpfile)
  txg_wait_synced(dmu_objset_pool(zfsvfs->z_os), txg);

 zfs_inode_update(dzp);
 zfs_inode_update(szp);
 ZFS_EXIT(zfsvfs);
 return (error);
}
