
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int strm_value ;
typedef scalar_t__ int32_t ;


 int STRM_TAG_INT ;
 int STRM_VAL_MASK ;

strm_value
strm_int_value(int32_t i)
{
  return STRM_TAG_INT | ((uint64_t)i & STRM_VAL_MASK);
}
