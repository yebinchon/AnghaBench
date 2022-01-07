
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_cfunc ;


 scalar_t__ STRM_TAG_CFUNC ;
 int assert (int) ;
 scalar_t__ strm_value_tag (int ) ;
 scalar_t__ strm_value_val (int ) ;

strm_cfunc
strm_value_cfunc(strm_value v)
{
  assert(strm_value_tag(v) == STRM_TAG_CFUNC);
  return (strm_cfunc)(intptr_t)strm_value_val(v);
}
