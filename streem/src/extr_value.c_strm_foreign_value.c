
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int STRM_TAG_FOREIGN ;
 int STRM_VAL_MASK ;

strm_value
strm_foreign_value(void* p)
{
  return STRM_TAG_FOREIGN | ((strm_value)(intptr_t)p & STRM_VAL_MASK);
}
