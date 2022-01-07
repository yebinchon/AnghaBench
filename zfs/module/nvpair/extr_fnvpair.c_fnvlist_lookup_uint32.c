
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_uint32 (int *,char const*,int *) ;

uint32_t
fnvlist_lookup_uint32(nvlist_t *nvl, const char *name)
{
 uint32_t rv;
 VERIFY0(nvlist_lookup_uint32(nvl, name, &rv));
 return (rv);
}
