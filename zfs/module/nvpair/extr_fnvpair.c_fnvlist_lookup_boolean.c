
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 scalar_t__ nvlist_lookup_boolean (int *,char const*) ;

boolean_t
fnvlist_lookup_boolean(nvlist_t *nvl, const char *name)
{
 return (nvlist_lookup_boolean(nvl, name) == 0);
}
