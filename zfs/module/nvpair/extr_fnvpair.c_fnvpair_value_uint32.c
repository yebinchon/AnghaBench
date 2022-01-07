
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvpair_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_uint32 (int *,int *) ;

uint32_t
fnvpair_value_uint32(nvpair_t *nvp)
{
 uint32_t rv;
 VERIFY0(nvpair_value_uint32(nvp, &rv));
 return (rv);
}
