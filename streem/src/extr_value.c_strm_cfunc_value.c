
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef scalar_t__ strm_cfunc ;


 int STRM_TAG_CFUNC ;
 int STRM_VAL_MASK ;

strm_value
strm_cfunc_value(strm_cfunc f)
{
  return STRM_TAG_CFUNC | ((strm_value)(intptr_t)f & STRM_VAL_MASK);
}
