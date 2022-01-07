
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int boolean_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_boolean_value (int *,int *) ;

boolean_t
fnvpair_value_boolean_value(nvpair_t *nvp)
{
 boolean_t rv;
 VERIFY0(nvpair_value_boolean_value(nvp, &rv));
 return (rv);
}
