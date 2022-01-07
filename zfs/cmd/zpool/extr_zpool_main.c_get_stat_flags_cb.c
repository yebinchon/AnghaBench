
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef unsigned long long uint64_t ;
typedef int nvlist_t ;


 int ARRAY_SIZE (scalar_t__**) ;
 unsigned long long IOS_DEFAULT_M ;
 scalar_t__ ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_STATS_EX ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_exists (int *,scalar_t__) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int verify (int) ;
 scalar_t__** vsx_type_to_nvlist ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static int
get_stat_flags_cb(zpool_handle_t *zhp, void *data)
{
 uint64_t *mask = data;
 nvlist_t *config, *nvroot, *nvx;
 uint64_t flags = 0;
 int i, j;

 config = zpool_get_config(zhp, ((void*)0));
 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);


 if (nvlist_exists(nvroot, ZPOOL_CONFIG_VDEV_STATS))
  flags |= IOS_DEFAULT_M;


 if (nvlist_lookup_nvlist(nvroot, ZPOOL_CONFIG_VDEV_STATS_EX,
     &nvx) != 0) {




  goto end;
 }


 for (j = 0; j < ARRAY_SIZE(vsx_type_to_nvlist); j++) {
  if (!vsx_type_to_nvlist[j][0])
   continue;


  flags |= (1ULL << j);
  for (i = 0; vsx_type_to_nvlist[j][i]; i++) {
   if (!nvlist_exists(nvx, vsx_type_to_nvlist[j][i])) {

    flags = flags & ~(1ULL << j);
    break;
   }
  }
 }
end:
 *mask = *mask & flags;
 return (0);
}
