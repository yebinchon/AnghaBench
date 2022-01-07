
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_uint64 (int *,char const*,int ) ;

void
fnvlist_add_uint64(nvlist_t *nvl, const char *name, uint64_t val)
{
 VERIFY0(nvlist_add_uint64(nvl, name, val));
}
