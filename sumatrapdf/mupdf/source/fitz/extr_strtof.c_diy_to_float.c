
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int f; int e; } ;
typedef TYPE_1__ strtof_fp_t ;


 int ERANGE ;
 int SP_SIGNIFICAND_MASK ;
 int SP_SIGNIFICAND_SIZE ;
 int assert (int) ;
 int errno ;

__attribute__((used)) static float
diy_to_float(strtof_fp_t x, int negative)
{
 uint32_t result;
 union
 {
  float f;
  uint32_t n;
 } tmp;

 assert(x.f & 0x80000000);


 if (x.e > 96 || (x.e == 96 && x.f >= 0xffffff80))
 {

  errno = ERANGE;
  result = 0xff << SP_SIGNIFICAND_SIZE;
 }

 else if (x.e > -158)
 {

  result = (uint32_t) (x.e + 158) << SP_SIGNIFICAND_SIZE;
  result |= (x.f >> 8) & SP_SIGNIFICAND_MASK;

  if (x.f & 0x80)
  {

   if (x.f & 0x7f)

    ++result;
   else if (x.f & 0x100)

    ++result;
  }
 }
 else if (x.e == -158 && x.f >= 0xffffff00)
 {


  result = 1U << SP_SIGNIFICAND_SIZE;
 }
 else if (x.e > -181)
 {

  int shift = -149 - x.e;

  result = x.f >> shift;

  if (x.f & (1U << (shift - 1)))

  {
   if (x.f & ((1U << (shift - 1)) - 1))

    ++result;
   else if (x.f & 1U << shift)

    ++result;
  }
 }
 else if (x.e == -181 && x.f > 0x80000000)
 {



  result = 1;
 }
 else
 {

  errno = ERANGE;
  result = 0;
 }

 if (negative)
  result |= 0x80000000;

 tmp.n = result;
 return tmp.f;
}
