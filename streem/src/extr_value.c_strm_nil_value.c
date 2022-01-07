
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int STRM_TAG_PTR ;

strm_value
strm_nil_value(void)
{
  return STRM_TAG_PTR | 0;
}
