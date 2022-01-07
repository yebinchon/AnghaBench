
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRC_FALSE ;
 int SRC_TRUE ;
 scalar_t__ is_bad_src_ratio (double) ;

int
src_is_valid_ratio (double ratio)
{
 if (is_bad_src_ratio (ratio))
  return SRC_FALSE ;

 return SRC_TRUE ;
}
