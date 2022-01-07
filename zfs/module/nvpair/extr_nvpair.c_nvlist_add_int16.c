
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int int16_t ;


 int DATA_TYPE_INT16 ;
 int nvlist_add_common (int *,char const*,int ,int,int *) ;

int
nvlist_add_int16(nvlist_t *nvl, const char *name, int16_t val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_INT16, 1, &val));
}
