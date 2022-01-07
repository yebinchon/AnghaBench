
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_Number ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
typedef scalar_t__ SFormat ;
typedef int SBuf ;


 scalar_t__ STRFMT_INT ;
 scalar_t__ checki32 (scalar_t__) ;
 int * lj_strfmt_putfxint (int *,scalar_t__,int ) ;
 int * lj_strfmt_putint (int *,int ) ;

SBuf *lj_strfmt_putfnum_int(SBuf *sb, SFormat sf, lua_Number n)
{
  int64_t k = (int64_t)n;
  if (checki32(k) && sf == STRFMT_INT)
    return lj_strfmt_putint(sb, (int32_t)k);
  else
    return lj_strfmt_putfxint(sb, sf, (uint64_t)k);
}
