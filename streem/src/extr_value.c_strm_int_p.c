
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 scalar_t__ STRM_TAG_INT ;
 scalar_t__ strm_value_tag (int ) ;

int
strm_int_p(strm_value v)
{
  return strm_value_tag(v) == STRM_TAG_INT;
}
