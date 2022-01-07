
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char*
sinc_get_name (int src_enum)
{
 switch (src_enum)
 { case 130 :
   return "Best Sinc Interpolator" ;

  case 128 :
   return "Medium Sinc Interpolator" ;

  case 129 :
   return "Fastest Sinc Interpolator" ;

  default: break ;
  } ;

 return ((void*)0) ;
}
