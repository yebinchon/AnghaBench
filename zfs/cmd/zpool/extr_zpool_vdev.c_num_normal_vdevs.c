
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 scalar_t__ B_FALSE ;
 int ZPOOL_CONFIG_ALLOCATION_BIAS ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 scalar_t__ nvlist_exists (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int verify (int) ;

__attribute__((used)) static int
num_normal_vdevs(nvlist_t *nvroot)
{
 nvlist_t **top;
 uint_t t, toplevels, normal = 0;

 verify(nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &top, &toplevels) == 0);

 for (t = 0; t < toplevels; t++) {
  uint64_t log = B_FALSE;

  (void) nvlist_lookup_uint64(top[t], ZPOOL_CONFIG_IS_LOG, &log);
  if (log)
   continue;
  if (nvlist_exists(top[t], ZPOOL_CONFIG_ALLOCATION_BIAS))
   continue;

  normal++;
 }

 return (normal);
}
