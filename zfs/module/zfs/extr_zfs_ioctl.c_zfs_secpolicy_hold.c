
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_HOLD ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_fsname (int ,char*) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int zfs_secpolicy_write_perms (char*,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_hold(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 nvpair_t *pair;
 nvlist_t *holds;
 int error;

 holds = fnvlist_lookup_nvlist(innvl, "holds");

 for (pair = nvlist_next_nvpair(holds, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(holds, pair)) {
  char fsname[ZFS_MAX_DATASET_NAME_LEN];
  error = dmu_fsname(nvpair_name(pair), fsname);
  if (error != 0)
   return (error);
  error = zfs_secpolicy_write_perms(fsname,
      ZFS_DELEG_PERM_HOLD, cr);
  if (error != 0)
   return (error);
 }
 return (0);
}
