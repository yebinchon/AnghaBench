
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int DATA_TYPE_NVLIST_ARRAY ;
 int nvpair_value_common (int *,int ,int *,int ***) ;

int
nvpair_value_nvlist_array(nvpair_t *nvp, nvlist_t ***val, uint_t *nelem)
{
 return (nvpair_value_common(nvp, DATA_TYPE_NVLIST_ARRAY, nelem, val));
}
