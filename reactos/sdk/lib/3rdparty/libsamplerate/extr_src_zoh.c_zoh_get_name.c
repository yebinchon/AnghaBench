
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRC_ZERO_ORDER_HOLD ;

const char*
zoh_get_name (int src_enum)
{
 if (src_enum == SRC_ZERO_ORDER_HOLD)
  return "ZOH Interpolator" ;

 return ((void*)0) ;
}
