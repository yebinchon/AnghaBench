
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 scalar_t__ STRM_TAG_FOREIGN ;
 int assert (int) ;
 void* strm_ptr (int ) ;
 scalar_t__ strm_value_tag (int ) ;

void*
strm_value_foreign(strm_value v)
{
  assert(strm_value_tag(v) == STRM_TAG_FOREIGN);
  return strm_ptr(v);
}
