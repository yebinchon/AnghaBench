
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int e; int member_0; int member_1; unsigned char f; } ;
typedef TYPE_1__ diy_fp_t ;



__attribute__((used)) static int
digit_gen_mix_grisu2(diy_fp_t D_upper, diy_fp_t delta, char* buffer, int* K)
{
 int kappa;
 diy_fp_t one = {(uint64_t) 1 << -D_upper.e, D_upper.e};
 unsigned char p1 = D_upper.f >> -one.e;
 uint64_t p2 = D_upper.f & (one.f - 1);
 unsigned char div = 10;
 uint64_t mask = one.f - 1;
 int len = 0;
 for (kappa = 2; kappa > 0; --kappa)
 {
  unsigned char digit = p1 / div;
  if (digit || len)
   buffer[len++] = '0' + digit;
  p1 %= div; div /= 10;
  if ((((uint64_t) p1) << -one.e) + p2 <= delta.f)
  {
   *K += kappa - 1;
   return len;
  }
 }
 do
 {
  p2 *= 10;
  buffer[len++] = '0' + (p2 >> -one.e);
  p2 &= mask;
  kappa--;
  delta.f *= 10;
 }
 while (p2 > delta.f);
 *K += kappa;
 return len;
}
