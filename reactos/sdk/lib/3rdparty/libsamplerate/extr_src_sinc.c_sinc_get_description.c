
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char*
sinc_get_description (int src_enum)
{
 switch (src_enum)
 { case 129 :
   return "Band limited sinc interpolation, fastest, 97dB SNR, 80% BW." ;

  case 128 :
   return "Band limited sinc interpolation, medium quality, 121dB SNR, 90% BW." ;

  case 130 :
   return "Band limited sinc interpolation, best quality, 144dB SNR, 96% BW." ;

  default :
   break ;
  } ;

 return ((void*)0) ;
}
