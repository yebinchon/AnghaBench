
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int int64_t ;


 int DATA_TYPE_INT64 ;
 int nvlist_lookup_common (int *,char const*,int ,int *,int *) ;

int
nvlist_lookup_int64(nvlist_t *nvl, const char *name, int64_t *val)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_INT64, ((void*)0), val));
}
