
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int FALSE ;
 scalar_t__ STRM_TAG_BOOL ;
 int TRUE ;
 scalar_t__ strm_value_tag (int ) ;

int
strm_bool_p(strm_value v)
{
  return (strm_value_tag(v) == STRM_TAG_BOOL) ? TRUE : FALSE;
}
