
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_nvlist (int *,char const*,int **) ;

nvlist_t *
fnvlist_lookup_nvlist(nvlist_t *nvl, const char *name)
{
 nvlist_t *rv;
 VERIFY0(nvlist_lookup_nvlist(nvl, name, &rv));
 return (rv);
}
