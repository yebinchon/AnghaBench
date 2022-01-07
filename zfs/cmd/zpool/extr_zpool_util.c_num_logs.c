
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 scalar_t__ B_FALSE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

uint_t
num_logs(nvlist_t *nv)
{
 uint_t nlogs = 0;
 uint_t c, children;
 nvlist_t **child;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0)
  return (0);

 for (c = 0; c < children; c++) {
  uint64_t is_log = B_FALSE;

  (void) nvlist_lookup_uint64(child[c], ZPOOL_CONFIG_IS_LOG,
      &is_log);
  if (is_log)
   nlogs++;
 }
 return (nlogs);
}
