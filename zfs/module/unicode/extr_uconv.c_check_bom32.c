
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ const UCONV_BOM_NORMAL ;
 scalar_t__ const UCONV_BOM_SWAPPED_32 ;
 int UCONV_IN_NAT_ENDIAN ;
 int UCONV_IN_REV_ENDIAN ;

__attribute__((used)) static boolean_t
check_bom32(const uint32_t *u32s, size_t u32l, int *in)
{
 if (u32l > 0) {
  if (*u32s == UCONV_BOM_NORMAL) {
   *in = UCONV_IN_NAT_ENDIAN;
   return (B_TRUE);
  }
  if (*u32s == UCONV_BOM_SWAPPED_32) {
   *in = UCONV_IN_REV_ENDIAN;
   return (B_TRUE);
  }
 }

 return (B_FALSE);
}
