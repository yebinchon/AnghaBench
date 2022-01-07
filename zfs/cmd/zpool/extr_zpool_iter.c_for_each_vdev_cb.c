
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int (* pool_vdev_iter_f ) (int *,int *,void*) ;
typedef int nvlist_t ;


 int ARRAY_SIZE (char const**) ;
 int VDEV_TYPE_ROOT ;
 char const* ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_HOLE ;
 char const* ZPOOL_CONFIG_L2CACHE ;
 char const* ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_TYPE ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,char const*,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
for_each_vdev_cb(zpool_handle_t *zhp, nvlist_t *nv, pool_vdev_iter_f func,
    void *data)
{
 nvlist_t **child;
 uint_t c, children;
 int ret = 0;
 int i;
 char *type;

 const char *list[] = {
     ZPOOL_CONFIG_SPARES,
     ZPOOL_CONFIG_L2CACHE,
     ZPOOL_CONFIG_CHILDREN
 };

 for (i = 0; i < ARRAY_SIZE(list); i++) {
  if (nvlist_lookup_nvlist_array(nv, list[i], &child,
      &children) == 0) {
   for (c = 0; c < children; c++) {
    uint64_t ishole = 0;

    (void) nvlist_lookup_uint64(child[c],
        ZPOOL_CONFIG_IS_HOLE, &ishole);

    if (ishole)
     continue;

    ret |= for_each_vdev_cb(zhp, child[c], func,
        data);
   }
  }
 }

 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) != 0)
  return (ret);


 if (strcmp(type, VDEV_TYPE_ROOT) != 0) {
  ret |= func(zhp, nv, data);
 }

 return (ret);
}
