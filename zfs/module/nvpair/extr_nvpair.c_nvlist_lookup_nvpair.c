
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int nvlist_lookup_nvpair_ei_sep (int *,char const*,int ,int **,int *,int *) ;

int
nvlist_lookup_nvpair(nvlist_t *nvl, const char *name, nvpair_t **ret)
{
 return (nvlist_lookup_nvpair_ei_sep(nvl, name, 0, ret, ((void*)0), ((void*)0)));
}
