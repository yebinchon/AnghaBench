
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRC_PRIVATE ;


 int SRC_ERR_BAD_CONVERTER ;
 scalar_t__ SRC_ERR_NO_ERROR ;
 scalar_t__ linear_set_converter (int *,int) ;
 scalar_t__ sinc_set_converter (int *,int) ;
 scalar_t__ zoh_set_converter (int *,int) ;

__attribute__((used)) static int
psrc_set_converter (SRC_PRIVATE *psrc, int converter_type)
{
 if (sinc_set_converter (psrc, converter_type) == SRC_ERR_NO_ERROR)
  return SRC_ERR_NO_ERROR ;

 if (zoh_set_converter (psrc, converter_type) == SRC_ERR_NO_ERROR)
  return SRC_ERR_NO_ERROR ;

 if (linear_set_converter (psrc, converter_type) == SRC_ERR_NO_ERROR)
  return SRC_ERR_NO_ERROR ;

 return SRC_ERR_BAD_CONVERTER ;
}
