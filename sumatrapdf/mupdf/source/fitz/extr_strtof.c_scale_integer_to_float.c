
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int strtof_fp_t ;


 int ERANGE ;
 float INFINITY ;
 int divide (int ,int ) ;
 float diy_to_float (int ,int) ;
 int errno ;
 int strtof_cached_power (int) ;
 int strtof_multiply (int ,int ) ;
 int uint32_to_diy (int) ;

__attribute__((used)) static float
scale_integer_to_float(uint32_t M, int N, int negative)
{
 strtof_fp_t result, x, power;

 if (M == 0)
  return negative ? -0.f : 0.f;
 if (N > 38)
 {

  errno = ERANGE;
  return negative ? -INFINITY : INFINITY;
 }
 if (N < -54)
 {

  errno = ERANGE;
  return negative ? -0.f : 0.f;
 }


 while (N > 13 && M <= 0xffffffff / 10)
 {
  M *= 10;
  --N;
 }

 while (N < -13 && M % 10 == 0)
 {
  M /= 10;
  ++N;
 }

 x = uint32_to_diy (M);
 if (N >= 0)
 {
  power = strtof_cached_power(N);
  result = strtof_multiply(x, power);
 }
 else
 {
  power = strtof_cached_power(-N);
  result = divide(x, power);
 }

 return diy_to_float(result, negative);
}
