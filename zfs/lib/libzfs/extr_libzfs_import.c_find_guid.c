
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int verify (int) ;

__attribute__((used)) static boolean_t
find_guid(nvlist_t *nv, uint64_t guid)
{
 uint64_t tmp;
 nvlist_t **child;
 uint_t c, children;

 verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &tmp) == 0);
 if (tmp == guid)
  return (B_TRUE);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   if (find_guid(child[c], guid))
    return (B_TRUE);
 }

 return (B_FALSE);
}
