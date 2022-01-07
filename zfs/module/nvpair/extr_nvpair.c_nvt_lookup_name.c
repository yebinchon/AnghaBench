
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int DATA_TYPE_DONTCARE ;
 int * nvt_lookup_name_type (int *,char const*,int ) ;

__attribute__((used)) static nvpair_t *
nvt_lookup_name(nvlist_t *nvl, const char *name)
{
 return (nvt_lookup_name_type(nvl, name, DATA_TYPE_DONTCARE));
}
