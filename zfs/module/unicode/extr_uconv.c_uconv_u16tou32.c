
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int boolean_t ;


 scalar_t__ const BSWAP_16 (scalar_t__ const) ;
 scalar_t__ BSWAP_32 (scalar_t__) ;
 int E2BIG ;
 int EBADF ;
 int EILSEQ ;
 int EINVAL ;
 scalar_t__ UCONV_BOM_NORMAL ;
 scalar_t__ UCONV_BOM_SWAPPED_32 ;
 int UCONV_IGNORE_NULL ;
 int UCONV_IN_ACCEPT_BOM ;
 int UCONV_IN_NAT_ENDIAN ;
 int UCONV_OUT_EMIT_BOM ;
 int UCONV_OUT_NAT_ENDIAN ;
 scalar_t__ UCONV_U16_BIT_MASK ;
 scalar_t__ UCONV_U16_BIT_SHIFT ;
 scalar_t__ UCONV_U16_HI_MAX ;
 scalar_t__ UCONV_U16_HI_MIN ;
 scalar_t__ UCONV_U16_LO_MAX ;
 scalar_t__ UCONV_U16_LO_MIN ;
 scalar_t__ UCONV_U16_START ;
 scalar_t__ check_bom16 (scalar_t__ const*,size_t,int*) ;
 scalar_t__ check_endian (int,int*,int*) ;

int
uconv_u16tou32(const uint16_t *u16s, size_t *utf16len,
    uint32_t *u32s, size_t *utf32len, int flag)
{
 int inendian;
 int outendian;
 size_t u16l;
 size_t u32l;
 uint32_t hi;
 uint32_t lo;
 boolean_t do_not_ignore_null;





 if (u16s == ((void*)0) || utf16len == ((void*)0))
  return (EILSEQ);

 if (u32s == ((void*)0) || utf32len == ((void*)0))
  return (E2BIG);

 if (check_endian(flag, &inendian, &outendian) != 0)
  return (EBADF);





 u16l = u32l = 0;
 hi = 0;
 do_not_ignore_null = ((flag & UCONV_IGNORE_NULL) == 0);





 if ((flag & UCONV_IN_ACCEPT_BOM) &&
     check_bom16(u16s, *utf16len, &inendian))
  u16l++;





 inendian &= UCONV_IN_NAT_ENDIAN;
 outendian &= UCONV_OUT_NAT_ENDIAN;





 if (*utf16len > 0 && *utf32len > 0 && (flag & UCONV_OUT_EMIT_BOM))
  u32s[u32l++] = (outendian) ? UCONV_BOM_NORMAL :
      UCONV_BOM_SWAPPED_32;







 for (; u16l < *utf16len; u16l++) {
  if (u16s[u16l] == 0 && do_not_ignore_null)
   break;

  lo = (uint32_t)((inendian) ? u16s[u16l] : BSWAP_16(u16s[u16l]));

  if (lo >= UCONV_U16_HI_MIN && lo <= UCONV_U16_HI_MAX) {
   if (hi)
    return (EILSEQ);
   hi = lo;
   continue;
  } else if (lo >= UCONV_U16_LO_MIN && lo <= UCONV_U16_LO_MAX) {
   if (! hi)
    return (EILSEQ);
   lo = (((hi - UCONV_U16_HI_MIN) * UCONV_U16_BIT_SHIFT +
       lo - UCONV_U16_LO_MIN) & UCONV_U16_BIT_MASK)
       + UCONV_U16_START;
   hi = 0;
  } else if (hi) {
   return (EILSEQ);
  }

  if (u32l >= *utf32len)
   return (E2BIG);

  u32s[u32l++] = (outendian) ? lo : BSWAP_32(lo);
 }





 if (hi)
  return (EINVAL);
 *utf16len = u16l;
 *utf32len = u32l;

 return (0);
}
