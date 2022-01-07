
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_23__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int z_pflags; int z_acl_lock; int z_lock; TYPE_3__* z_acl_cached; int z_is_sa; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
struct TYPE_27__ {scalar_t__ z_version; scalar_t__ z_fuid_dirty; int z_os; int * z_log; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zfs_fuid_info_t ;
struct TYPE_28__ {int z_hints; scalar_t__ z_acl_bytes; } ;
typedef TYPE_3__ zfs_acl_t ;
struct TYPE_29__ {scalar_t__ vsa_mask; } ;
typedef TYPE_4__ vsecattr_t ;
typedef scalar_t__ ulong_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_26__ {int i_mode; } ;


 int ACE_WRITE_ACL ;
 int ASSERT (int) ;
 int B_TRUE ;
 int DMU_NEW_OBJECT ;
 int DMU_OBJECT_END ;
 int ENOSYS ;
 int EPERM ;
 int ERESTART ;
 int SET_ERROR (int ) ;
 int TXG_NOWAIT ;
 int V4_ACL_WIDE_FLAGS ;
 scalar_t__ VSA_ACE ;
 scalar_t__ VSA_ACECNT ;
 int VSA_ACE_ACLFLAGS ;
 scalar_t__ ZFS_ACE_SPACE ;
 scalar_t__ ZFS_ACL_VERSION_INITIAL ;
 int ZFS_IMMUTABLE ;
 scalar_t__ ZPL_VERSION_FUID ;
 TYPE_23__* ZTOI (TYPE_1__*) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_free (int *,int ,int ,int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_write (int *,int ,int ,scalar_t__) ;
 int dmu_tx_wait (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_acl_free (TYPE_3__*) ;
 int zfs_aclset_common (TYPE_1__*,TYPE_3__*,int *,int *) ;
 int zfs_external_acl (TYPE_1__*) ;
 int zfs_fuid_info_free (int *) ;
 int zfs_fuid_sync (TYPE_2__*,int *) ;
 int zfs_fuid_txhold (TYPE_2__*,int *) ;
 int zfs_log_acl (int *,int *,TYPE_1__*,TYPE_4__*,int *) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_vsec_2_aclp (TYPE_2__*,int ,TYPE_4__*,int *,int **,TYPE_3__**) ;
 int zfs_zaccess (TYPE_1__*,int ,int ,scalar_t__,int *) ;
 scalar_t__ zfs_znode_acl_version (TYPE_1__*) ;

int
zfs_setacl(znode_t *zp, vsecattr_t *vsecp, boolean_t skipaclchk, cred_t *cr)
{
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 zilog_t *zilog = zfsvfs->z_log;
 ulong_t mask = vsecp->vsa_mask & (VSA_ACE | VSA_ACECNT);
 dmu_tx_t *tx;
 int error;
 zfs_acl_t *aclp;
 zfs_fuid_info_t *fuidp = ((void*)0);
 boolean_t fuid_dirtied;
 uint64_t acl_obj;

 if (mask == 0)
  return (SET_ERROR(ENOSYS));

 if (zp->z_pflags & ZFS_IMMUTABLE)
  return (SET_ERROR(EPERM));

 if ((error = zfs_zaccess(zp, ACE_WRITE_ACL, 0, skipaclchk, cr)))
  return (error);

 error = zfs_vsec_2_aclp(zfsvfs, ZTOI(zp)->i_mode, vsecp, cr, &fuidp,
     &aclp);
 if (error)
  return (error);





 if (!(vsecp->vsa_mask & VSA_ACE_ACLFLAGS)) {
  aclp->z_hints |=
      (zp->z_pflags & V4_ACL_WIDE_FLAGS);
 }
top:
 mutex_enter(&zp->z_acl_lock);
 mutex_enter(&zp->z_lock);

 tx = dmu_tx_create(zfsvfs->z_os);

 dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_TRUE);

 fuid_dirtied = zfsvfs->z_fuid_dirty;
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);






 if ((acl_obj = zfs_external_acl(zp)) != 0) {
  if (zfsvfs->z_version >= ZPL_VERSION_FUID &&
      zfs_znode_acl_version(zp) <= ZFS_ACL_VERSION_INITIAL) {
   dmu_tx_hold_free(tx, acl_obj, 0,
       DMU_OBJECT_END);
   dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0,
       aclp->z_acl_bytes);
  } else {
   dmu_tx_hold_write(tx, acl_obj, 0, aclp->z_acl_bytes);
  }
 } else if (!zp->z_is_sa && aclp->z_acl_bytes > ZFS_ACE_SPACE) {
  dmu_tx_hold_write(tx, DMU_NEW_OBJECT, 0, aclp->z_acl_bytes);
 }

 zfs_sa_upgrade_txholds(tx, zp);
 error = dmu_tx_assign(tx, TXG_NOWAIT);
 if (error) {
  mutex_exit(&zp->z_acl_lock);
  mutex_exit(&zp->z_lock);

  if (error == ERESTART) {
   dmu_tx_wait(tx);
   dmu_tx_abort(tx);
   goto top;
  }
  dmu_tx_abort(tx);
  zfs_acl_free(aclp);
  return (error);
 }

 error = zfs_aclset_common(zp, aclp, cr, tx);
 ASSERT(error == 0);
 ASSERT(zp->z_acl_cached == ((void*)0));
 zp->z_acl_cached = aclp;

 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);

 zfs_log_acl(zilog, tx, zp, vsecp, fuidp);

 if (fuidp)
  zfs_fuid_info_free(fuidp);
 dmu_tx_commit(tx);

 mutex_exit(&zp->z_lock);
 mutex_exit(&zp->z_acl_lock);

 return (error);
}
