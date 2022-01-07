
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int STRM_TAG_NAN ;

int
strm_float_p(strm_value v)
{

  return v == STRM_TAG_NAN || (v & STRM_TAG_NAN) != STRM_TAG_NAN;
}
