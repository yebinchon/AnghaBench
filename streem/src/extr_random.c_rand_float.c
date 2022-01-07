
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 double xorshift128 (int *) ;

__attribute__((used)) static double
rand_float(uint32_t seed[4])
{
  return xorshift128(seed)*(1.0/4294967295.0);
}
