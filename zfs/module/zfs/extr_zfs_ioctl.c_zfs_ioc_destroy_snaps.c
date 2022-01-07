
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dsl_destroy_snapshots_nvl (int *,int ,int *) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int nvlist_exists (int *,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int spa_close (int *,int ) ;
 scalar_t__ spa_open (char const*,int **,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int zfs_unmount_snap (char*) ;
 int zvol_remove_minors (int *,char const*,int ) ;

__attribute__((used)) static int
zfs_ioc_destroy_snaps(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int poollen;
 nvlist_t *snaps;
 nvpair_t *pair;
 boolean_t defer;
 spa_t *spa;

 snaps = fnvlist_lookup_nvlist(innvl, "snaps");
 defer = nvlist_exists(innvl, "defer");

 poollen = strlen(poolname);
 for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(snaps, pair)) {
  const char *name = nvpair_name(pair);





  if (strncmp(name, poolname, poollen) != 0 ||
      (name[poollen] != '/' && name[poollen] != '@'))
   return (SET_ERROR(EXDEV));

  zfs_unmount_snap(nvpair_name(pair));
  if (spa_open(name, &spa, FTAG) == 0) {
   zvol_remove_minors(spa, name, B_TRUE);
   spa_close(spa, FTAG);
  }
 }

 return (dsl_destroy_snapshots_nvl(snaps, defer, outnvl));
}
