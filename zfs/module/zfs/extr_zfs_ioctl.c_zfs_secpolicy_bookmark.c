
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZFS_DELEG_PERM_BOOKMARK ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char*,char) ;
 int zfs_secpolicy_write_perms (char*,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_bookmark(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 int error = 0;

 for (nvpair_t *pair = nvlist_next_nvpair(innvl, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(innvl, pair)) {
  char *name = nvpair_name(pair);
  char *hashp = strchr(name, '#');

  if (hashp == ((void*)0)) {
   error = SET_ERROR(EINVAL);
   break;
  }
  *hashp = '\0';
  error = zfs_secpolicy_write_perms(name,
      ZFS_DELEG_PERM_BOOKMARK, cr);
  *hashp = '#';
  if (error != 0)
   break;
 }
 return (error);
}
