
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int VDEV_TYPE_REPLACING ;
 int VDEV_TYPE_SPARE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_TYPE ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static boolean_t
vdev_any_spare_replacing(nvlist_t *nv)
{
 nvlist_t **child;
 uint_t c, children;
 char *vdev_type;

 (void) nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &vdev_type);

 if (strcmp(vdev_type, VDEV_TYPE_REPLACING) == 0 ||
     strcmp(vdev_type, VDEV_TYPE_SPARE) == 0) {
  return (B_TRUE);
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0)
  children = 0;

 for (c = 0; c < children; c++) {
  if (vdev_any_spare_replacing(child[c]))
   return (B_TRUE);
 }

 return (B_FALSE);
}
