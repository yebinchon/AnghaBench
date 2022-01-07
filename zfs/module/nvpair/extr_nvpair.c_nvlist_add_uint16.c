
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;


 int DATA_TYPE_UINT16 ;
 int nvlist_add_common (int *,char const*,int ,int,int *) ;

int
nvlist_add_uint16(nvlist_t *nvl, const char *name, uint16_t val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_UINT16, 1, &val));
}
