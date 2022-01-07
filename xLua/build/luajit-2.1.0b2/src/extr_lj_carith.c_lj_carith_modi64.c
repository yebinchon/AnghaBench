
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int U64x (int,int) ;

int64_t lj_carith_modi64(int64_t a, int64_t b)
{
  if (b == 0) return U64x(80000000,00000000);
  if (a == (int64_t)U64x(80000000,00000000) && b == -1) return 0;
  return a % b;
}
