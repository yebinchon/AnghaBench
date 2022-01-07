
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int FALSE ;
 scalar_t__ STRM_TAG_PTR ;
 scalar_t__ strm_value_tag (int ) ;
 scalar_t__ strm_value_val (int ) ;

int
strm_nil_p(strm_value v)
{
  if (strm_value_tag(v) != STRM_TAG_PTR)
    return FALSE;
  return strm_value_val(v) == 0;
}
