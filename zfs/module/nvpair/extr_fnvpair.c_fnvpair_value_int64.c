
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int int64_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_int64 (int *,int *) ;

int64_t
fnvpair_value_int64(nvpair_t *nvp)
{
 int64_t rv;
 VERIFY0(nvpair_value_int64(nvp, &rv));
 return (rv);
}
