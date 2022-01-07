
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRC_LINEAR ;

const char*
linear_get_name (int src_enum)
{
 if (src_enum == SRC_LINEAR)
  return "Linear Interpolator" ;

 return ((void*)0) ;
}
