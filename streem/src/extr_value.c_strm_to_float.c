
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int strm_value ;



__attribute__((used)) static inline double
strm_to_float(strm_value v)
{
  union {
    double f;
    uint64_t i;
  } u;

  u.i = v;
  return u.f;
}
