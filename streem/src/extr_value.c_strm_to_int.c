
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int int32_t ;


 int STRM_TAG_MASK ;

__attribute__((used)) static inline int32_t
strm_to_int(strm_value v)
{
  return (int32_t)(v & ~STRM_TAG_MASK);
}
