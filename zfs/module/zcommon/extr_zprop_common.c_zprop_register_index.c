
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_index_t ;
typedef int zprop_attr_t ;
typedef int uint64_t ;


 int B_TRUE ;
 int PROP_TYPE_INDEX ;
 int zprop_register_impl (int,char const*,int ,int ,int *,int ,int,char const*,char const*,int ,int ,int const*) ;

void
zprop_register_index(int prop, const char *name, uint64_t def,
    zprop_attr_t attr, int objset_types, const char *values,
    const char *colname, const zprop_index_t *idx_tbl)
{
 zprop_register_impl(prop, name, PROP_TYPE_INDEX, def, ((void*)0), attr,
     objset_types, values, colname, B_TRUE, B_TRUE, idx_tbl);
}
