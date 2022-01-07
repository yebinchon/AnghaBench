
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_boolean_value (int *,char const*,int *) ;

boolean_t
fnvlist_lookup_boolean_value(nvlist_t *nvl, const char *name)
{
 boolean_t rv;
 VERIFY0(nvlist_lookup_boolean_value(nvl, name, &rv));
 return (rv);
}
