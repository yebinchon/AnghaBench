
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 scalar_t__ zpool_prop_feature (int ) ;

__attribute__((used)) static boolean_t
prop_list_contains_feature(nvlist_t *proplist)
{
 nvpair_t *nvp;
 for (nvp = nvlist_next_nvpair(proplist, ((void*)0)); ((void*)0) != nvp;
     nvp = nvlist_next_nvpair(proplist, nvp)) {
  if (zpool_prop_feature(nvpair_name(nvp)))
   return (B_TRUE);
 }
 return (B_FALSE);
}
