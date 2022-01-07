
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_version; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; scalar_t__ z_userobjquota_obj; scalar_t__ z_groupobjquota_obj; scalar_t__ z_projectquota_obj; scalar_t__ z_projectobjquota_obj; int z_os; int z_lock; scalar_t__ z_fuid_dirty; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_userquota_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 scalar_t__ DMU_NEW_OBJECT ;
 int DMU_OT_NONE ;
 int DMU_OT_USERGROUP_QUOTA ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 scalar_t__ MASTER_NODE_OBJ ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int VERIFY (int) ;






 scalar_t__ ZPL_VERSION_USERSPACE ;
 int dmu_objset_projectquota_enabled (int ) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_zap (int *,scalar_t__,int ,int *) ;
 int id_to_fuidstr (TYPE_1__*,char const*,scalar_t__,char*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zap_add (int ,scalar_t__,int *,int,int,scalar_t__*,int *) ;
 scalar_t__ zap_create (int ,int ,int ,int ,int *) ;
 int zap_remove (int ,scalar_t__,char*,int *) ;
 int zap_update (int ,scalar_t__,char*,int,int,scalar_t__*,int *) ;
 int zfs_fuid_sync (TYPE_1__*,int *) ;
 int zfs_fuid_txhold (TYPE_1__*,int *) ;
 int ** zfs_userquota_prop_prefixes ;
 int zpl_is_valid_projid (scalar_t__) ;

int
zfs_set_userquota(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t quota)
{
 char buf[32];
 int err;
 dmu_tx_t *tx;
 uint64_t *objp;
 boolean_t fuid_dirtied;

 if (zfsvfs->z_version < ZPL_VERSION_USERSPACE)
  return (SET_ERROR(ENOTSUP));

 switch (type) {
 case 128:
  objp = &zfsvfs->z_userquota_obj;
  break;
 case 132:
  objp = &zfsvfs->z_groupquota_obj;
  break;
 case 129:
  objp = &zfsvfs->z_userobjquota_obj;
  break;
 case 133:
  objp = &zfsvfs->z_groupobjquota_obj;
  break;
 case 130:
  if (!dmu_objset_projectquota_enabled(zfsvfs->z_os))
   return (SET_ERROR(ENOTSUP));
  if (!zpl_is_valid_projid(rid))
   return (SET_ERROR(EINVAL));

  objp = &zfsvfs->z_projectquota_obj;
  break;
 case 131:
  if (!dmu_objset_projectquota_enabled(zfsvfs->z_os))
   return (SET_ERROR(ENOTSUP));
  if (!zpl_is_valid_projid(rid))
   return (SET_ERROR(EINVAL));

  objp = &zfsvfs->z_projectobjquota_obj;
  break;
 default:
  return (SET_ERROR(EINVAL));
 }

 err = id_to_fuidstr(zfsvfs, domain, rid, buf, B_TRUE);
 if (err)
  return (err);
 fuid_dirtied = zfsvfs->z_fuid_dirty;

 tx = dmu_tx_create(zfsvfs->z_os);
 dmu_tx_hold_zap(tx, *objp ? *objp : DMU_NEW_OBJECT, B_TRUE, ((void*)0));
 if (*objp == 0) {
  dmu_tx_hold_zap(tx, MASTER_NODE_OBJ, B_TRUE,
      zfs_userquota_prop_prefixes[type]);
 }
 if (fuid_dirtied)
  zfs_fuid_txhold(zfsvfs, tx);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err) {
  dmu_tx_abort(tx);
  return (err);
 }

 mutex_enter(&zfsvfs->z_lock);
 if (*objp == 0) {
  *objp = zap_create(zfsvfs->z_os, DMU_OT_USERGROUP_QUOTA,
      DMU_OT_NONE, 0, tx);
  VERIFY(0 == zap_add(zfsvfs->z_os, MASTER_NODE_OBJ,
      zfs_userquota_prop_prefixes[type], 8, 1, objp, tx));
 }
 mutex_exit(&zfsvfs->z_lock);

 if (quota == 0) {
  err = zap_remove(zfsvfs->z_os, *objp, buf, tx);
  if (err == ENOENT)
   err = 0;
 } else {
  err = zap_update(zfsvfs->z_os, *objp, buf, 8, 1, &quota, tx);
 }
 ASSERT(err == 0);
 if (fuid_dirtied)
  zfs_fuid_sync(zfsvfs, tx);
 dmu_tx_commit(tx);
 return (err);
}
