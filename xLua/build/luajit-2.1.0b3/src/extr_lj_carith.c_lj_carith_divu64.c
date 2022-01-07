
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int U64x (int,int) ;

uint64_t lj_carith_divu64(uint64_t a, uint64_t b)
{
  if (b == 0) return U64x(80000000,00000000);
  return a / b;
}
