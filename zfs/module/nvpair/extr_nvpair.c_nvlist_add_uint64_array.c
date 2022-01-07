
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int DATA_TYPE_UINT64_ARRAY ;
 int nvlist_add_common (int *,char const*,int ,int ,int *) ;

int
nvlist_add_uint64_array(nvlist_t *nvl, const char *name, uint64_t *a, uint_t n)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_UINT64_ARRAY, n, a));
}
