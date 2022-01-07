
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DATA_TYPE_NVLIST ;
 int nvlist_lookup_common (int *,char const*,int ,int *,int **) ;

int
nvlist_lookup_nvlist(nvlist_t *nvl, const char *name, nvlist_t **val)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_NVLIST, ((void*)0), val));
}
