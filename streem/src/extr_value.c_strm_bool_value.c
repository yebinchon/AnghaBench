
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int STRM_TAG_BOOL ;

strm_value
strm_bool_value(int i)
{
  return STRM_TAG_BOOL | (!!i);
}
