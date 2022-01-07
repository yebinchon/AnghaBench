
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ENOENT ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int fnvlist_remove_nvpair (int *,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int zfs_secpolicy_destroy_perms (int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_destroy_snaps(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 nvlist_t *snaps;
 nvpair_t *pair, *nextpair;
 int error = 0;

 snaps = fnvlist_lookup_nvlist(innvl, "snaps");

 for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
     pair = nextpair) {
  nextpair = nvlist_next_nvpair(snaps, pair);
  error = zfs_secpolicy_destroy_perms(nvpair_name(pair), cr);
  if (error == ENOENT) {
   fnvlist_remove_nvpair(snaps, pair);
   error = 0;
  }
  if (error != 0)
   break;
 }

 return (error);
}
