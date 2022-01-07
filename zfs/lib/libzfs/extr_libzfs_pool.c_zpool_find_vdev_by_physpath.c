
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_PHYS_PATH ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ strtoull (char const*,char**,int ) ;
 int * vdev_to_nvlist_iter (int *,int *,int *,int *,int *) ;
 int verify (int) ;

nvlist_t *
zpool_find_vdev_by_physpath(zpool_handle_t *zhp, const char *ppath,
    boolean_t *avail_spare, boolean_t *l2cache, boolean_t *log)
{
 nvlist_t *search, *nvroot, *ret;
 uint64_t guid;
 char *end;

 verify(nvlist_alloc(&search, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 guid = strtoull(ppath, &end, 0);
 if (guid != 0 && *end == '\0') {
  verify(nvlist_add_uint64(search, ZPOOL_CONFIG_GUID, guid) == 0);
 } else {
  verify(nvlist_add_string(search, ZPOOL_CONFIG_PHYS_PATH,
      ppath) == 0);
 }

 verify(nvlist_lookup_nvlist(zhp->zpool_config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);

 *avail_spare = B_FALSE;
 *l2cache = B_FALSE;
 if (log != ((void*)0))
  *log = B_FALSE;
 ret = vdev_to_nvlist_iter(nvroot, search, avail_spare, l2cache, log);
 nvlist_free(search);

 return (ret);
}
