
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int VDEV_ALLOC_BIAS_SPECIAL ;
 int ZPOOL_CONFIG_ALLOCATION_BIAS ;
 int ZPOOL_CONFIG_CHILDREN ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static boolean_t
zpool_has_special_vdev(nvlist_t *nvroot)
{
 nvlist_t **child;
 uint_t children;

 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  for (uint_t c = 0; c < children; c++) {
   char *bias;

   if (nvlist_lookup_string(child[c],
       ZPOOL_CONFIG_ALLOCATION_BIAS, &bias) == 0 &&
       strcmp(bias, VDEV_ALLOC_BIAS_SPECIAL) == 0) {
    return (B_TRUE);
   }
  }
 }
 return (B_FALSE);
}
