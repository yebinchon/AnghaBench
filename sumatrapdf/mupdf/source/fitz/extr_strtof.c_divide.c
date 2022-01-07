
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int f; scalar_t__ e; } ;
typedef TYPE_1__ strtof_fp_t ;



__attribute__((used)) static strtof_fp_t
divide(strtof_fp_t x, strtof_fp_t y)
{
 uint64_t product, quotient;
 uint32_t remainder;
 strtof_fp_t res;

 res.e = x.e - y.e - 32;
 product = (uint64_t) x.f << 32;
 quotient = product / y.f;
 remainder = product % y.f;

 if (quotient <= 0xffffffff)
  res.f = quotient;
 else
 {
  ++res.e;

  res.f = quotient >> 1;
 }
 if (remainder)
  res.f |= 1;
 return res;
}
