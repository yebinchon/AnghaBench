
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int SPA_OLD_MAXBLOCKSIZE ;
 int VDEV_TYPE_RAIDZ ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int*) ;
 scalar_t__ strcmp (char*,int ) ;
 int vdev_raidz_asize (size_t,int,int,int) ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static uint64_t
volsize_from_vdevs(zpool_handle_t *zhp, uint64_t nblocks, uint64_t blksize)
{
 nvlist_t *config, *tree, **vdevs;
 uint_t nvdevs, v;
 uint64_t ret = 0;

 config = zpool_get_config(zhp, ((void*)0));
 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE, &tree) != 0 ||
     nvlist_lookup_nvlist_array(tree, ZPOOL_CONFIG_CHILDREN,
     &vdevs, &nvdevs) != 0) {
  return (nblocks * blksize);
 }

 for (v = 0; v < nvdevs; v++) {
  char *type;
  uint64_t nparity, ashift, asize, tsize;
  nvlist_t **disks;
  uint_t ndisks;
  uint64_t volsize;

  if (nvlist_lookup_string(vdevs[v], ZPOOL_CONFIG_TYPE,
      &type) != 0 || strcmp(type, VDEV_TYPE_RAIDZ) != 0 ||
      nvlist_lookup_uint64(vdevs[v], ZPOOL_CONFIG_NPARITY,
      &nparity) != 0 ||
      nvlist_lookup_uint64(vdevs[v], ZPOOL_CONFIG_ASHIFT,
      &ashift) != 0 ||
      nvlist_lookup_nvlist_array(vdevs[v], ZPOOL_CONFIG_CHILDREN,
      &disks, &ndisks) != 0) {
   continue;
  }


  tsize = vdev_raidz_asize(ndisks, nparity, ashift,
      SPA_OLD_MAXBLOCKSIZE);

  asize = vdev_raidz_asize(ndisks, nparity, ashift, blksize);





  volsize = nblocks * asize * SPA_OLD_MAXBLOCKSIZE / tsize;
  if (volsize > ret) {
   ret = volsize;
  }
 }

 if (ret == 0) {
  ret = nblocks * blksize;
 }

 return (ret);
}
