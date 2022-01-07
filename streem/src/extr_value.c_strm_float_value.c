
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int strm_value ;


 int STRM_TAG_NAN ;
 scalar_t__ isnan (double) ;

strm_value
strm_float_value(double f)
{
  union {
    double f;
    uint64_t i;
  } u;

  if (isnan(f)) {
    return STRM_TAG_NAN;
  }
  u.f = f;
  return u.i;
}
