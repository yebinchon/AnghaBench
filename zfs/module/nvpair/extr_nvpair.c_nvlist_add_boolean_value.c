
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int DATA_TYPE_BOOLEAN_VALUE ;
 int nvlist_add_common (int *,char const*,int ,int,int *) ;

int
nvlist_add_boolean_value(nvlist_t *nvl, const char *name, boolean_t val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_BOOLEAN_VALUE, 1, &val));
}
