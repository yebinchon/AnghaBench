
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvpair_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_uint16 (int *,int *) ;

uint16_t
fnvpair_value_uint16(nvpair_t *nvp)
{
 uint16_t rv;
 VERIFY0(nvpair_value_uint16(nvp, &rv));
 return (rv);
}
