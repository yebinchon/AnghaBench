
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int CRED () ;
 int EINVAL ;
 int ENOTSUP ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int SPA_VERSION_SNAP_PROPS ;
 int ZFS_DELEG_PERM_USERPROP ;
 int dsl_dataset_snapshot (int *,int *,int *) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int nvlist_empty (int *) ;
 int nvlist_lookup_nvlist (int *,char*,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char const* nvpair_name (int *) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int zfs_check_userprops (int *) ;
 scalar_t__ zfs_component_namecheck (char*,int *,int *) ;
 scalar_t__ zfs_earlier_version (char const*,int ) ;
 int zfs_secpolicy_write_perms (char const*,int ,int ) ;

__attribute__((used)) static int
zfs_ioc_snapshot(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 nvlist_t *snaps;
 nvlist_t *props = ((void*)0);
 int error, poollen;
 nvpair_t *pair;

 (void) nvlist_lookup_nvlist(innvl, "props", &props);
 if (!nvlist_empty(props) &&
     zfs_earlier_version(poolname, SPA_VERSION_SNAP_PROPS))
  return (SET_ERROR(ENOTSUP));
 if ((error = zfs_check_userprops(props)) != 0)
  return (error);

 snaps = fnvlist_lookup_nvlist(innvl, "snaps");
 poollen = strlen(poolname);
 for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(snaps, pair)) {
  const char *name = nvpair_name(pair);
  char *cp = strchr(name, '@');





  if (cp == ((void*)0) ||
      zfs_component_namecheck(cp + 1, ((void*)0), ((void*)0)) != 0)
   return (SET_ERROR(EINVAL));




  if (strncmp(name, poolname, poollen) != 0 ||
      (name[poollen] != '/' && name[poollen] != '@'))
   return (SET_ERROR(EXDEV));




  if (!nvlist_empty(props)) {
   *cp = '\0';
   error = zfs_secpolicy_write_perms(name,
       ZFS_DELEG_PERM_USERPROP, CRED());
   *cp = '@';
   if (error != 0)
    return (error);
  }


  for (nvpair_t *pair2 = nvlist_next_nvpair(snaps, pair);
      pair2 != ((void*)0); pair2 = nvlist_next_nvpair(snaps, pair2)) {
   if (strncmp(name, nvpair_name(pair2), cp - name + 1)
       == 0) {
    return (SET_ERROR(EXDEV));
   }
  }
 }

 error = dsl_dataset_snapshot(snaps, props, outnvl);

 return (error);
}
