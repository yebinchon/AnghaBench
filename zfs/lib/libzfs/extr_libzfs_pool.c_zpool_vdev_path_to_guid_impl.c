
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZPOOL_CONFIG_GUID ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int verify (int) ;
 int * zpool_find_vdev (int *,char const*,int *,int *,int *) ;

__attribute__((used)) static uint64_t
zpool_vdev_path_to_guid_impl(zpool_handle_t *zhp, const char *path,
    boolean_t *is_spare, boolean_t *is_l2cache, boolean_t *is_log)
{
 uint64_t guid;
 boolean_t spare = B_FALSE, l2cache = B_FALSE, log = B_FALSE;
 nvlist_t *tgt;

 if ((tgt = zpool_find_vdev(zhp, path, &spare, &l2cache,
     &log)) == ((void*)0))
  return (0);

 verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID, &guid) == 0);
 if (is_spare != ((void*)0))
  *is_spare = spare;
 if (is_l2cache != ((void*)0))
  *is_l2cache = l2cache;
 if (is_log != ((void*)0))
  *is_log = log;

 return (guid);
}
