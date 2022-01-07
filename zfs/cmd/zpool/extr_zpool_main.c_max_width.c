
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int free (char*) ;
 int g_zfs ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int strlen (char*) ;
 char* zpool_vdev_name (int ,int *,int *,int) ;

__attribute__((used)) static int
max_width(zpool_handle_t *zhp, nvlist_t *nv, int depth, int max,
    int name_flags)
{
 char *name;
 nvlist_t **child;
 uint_t c, children;
 int ret;

 name = zpool_vdev_name(g_zfs, zhp, nv, name_flags);
 if (strlen(name) + depth > max)
  max = strlen(name) + depth;

 free(name);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_SPARES,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if ((ret = max_width(zhp, child[c], depth + 2,
       max, name_flags)) > max)
    max = ret;
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_L2CACHE,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if ((ret = max_width(zhp, child[c], depth + 2,
       max, name_flags)) > max)
    max = ret;
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if ((ret = max_width(zhp, child[c], depth + 2,
       max, name_flags)) > max)
    max = ret;
 }

 return (max);
}
