
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ mmp_state_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ MMP_STATE_INACTIVE ;
 scalar_t__ POOL_STATE_EXPORTED ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 scalar_t__ get_system_hostid () ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

__attribute__((used)) static boolean_t
zfs_force_import_required(nvlist_t *config)
{
 uint64_t state;
 uint64_t hostid = 0;
 nvlist_t *nvinfo;

 state = fnvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE);
 (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_HOSTID, &hostid);

 if (state != POOL_STATE_EXPORTED && hostid != get_system_hostid())
  return (B_TRUE);

 nvinfo = fnvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO);
 if (nvlist_exists(nvinfo, ZPOOL_CONFIG_MMP_STATE)) {
  mmp_state_t mmp_state = fnvlist_lookup_uint64(nvinfo,
      ZPOOL_CONFIG_MMP_STATE);

  if (mmp_state != MMP_STATE_INACTIVE)
   return (B_TRUE);
 }

 return (B_FALSE);
}
