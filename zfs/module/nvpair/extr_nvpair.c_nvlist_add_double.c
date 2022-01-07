
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DATA_TYPE_DOUBLE ;
 int nvlist_add_common (int *,char const*,int ,int,double*) ;

int
nvlist_add_double(nvlist_t *nvl, const char *name, double val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_DOUBLE, 1, &val));
}
