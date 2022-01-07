
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ z_projectquota_obj; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; int z_os; scalar_t__ z_replay; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ DMU_GROUPUSED_OBJECT ;
 scalar_t__ DMU_PROJECTUSED_OBJECT ;
 scalar_t__ DMU_USERUSED_OBJECT ;
 int FTAG ;
 int dmu_objset_id_quota_upgrade (int ) ;
 int dmu_objset_pool (int ) ;
 int dmu_objset_projectquota_present (int ) ;
 scalar_t__ dmu_objset_projectquota_upgradable (int ) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 int sprintf (char*,char*,int ) ;
 int zap_lookup (int ,scalar_t__,char*,int,int,scalar_t__*) ;

boolean_t
zfs_id_overblockquota(zfsvfs_t *zfsvfs, uint64_t usedobj, uint64_t id)
{
 char buf[20];
 uint64_t used, quota, quotaobj;
 int err;

 if (usedobj == DMU_PROJECTUSED_OBJECT) {
  if (!dmu_objset_projectquota_present(zfsvfs->z_os)) {
   if (dmu_objset_projectquota_upgradable(zfsvfs->z_os)) {
    dsl_pool_config_enter(
        dmu_objset_pool(zfsvfs->z_os), FTAG);
    dmu_objset_id_quota_upgrade(zfsvfs->z_os);
    dsl_pool_config_exit(
        dmu_objset_pool(zfsvfs->z_os), FTAG);
   }
   return (B_FALSE);
  }
  quotaobj = zfsvfs->z_projectquota_obj;
 } else if (usedobj == DMU_USERUSED_OBJECT) {
  quotaobj = zfsvfs->z_userquota_obj;
 } else if (usedobj == DMU_GROUPUSED_OBJECT) {
  quotaobj = zfsvfs->z_groupquota_obj;
 } else {
  return (B_FALSE);
 }
 if (quotaobj == 0 || zfsvfs->z_replay)
  return (B_FALSE);

 (void) sprintf(buf, "%llx", (longlong_t)id);
 err = zap_lookup(zfsvfs->z_os, quotaobj, buf, 8, 1, &quota);
 if (err != 0)
  return (B_FALSE);

 err = zap_lookup(zfsvfs->z_os, usedobj, buf, 8, 1, &used);
 if (err != 0)
  return (B_FALSE);
 return (used >= quota);
}
