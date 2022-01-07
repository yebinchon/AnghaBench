
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARTYPE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ VT_ARRAY ;
 scalar_t__ VT_BYREF ;
 scalar_t__ VT_CLSID ;
 scalar_t__ VT_I8 ;
 scalar_t__ VT_LPWSTR ;
 scalar_t__ VT_NULL ;
 scalar_t__ VT_RECORD ;
 scalar_t__ VT_UI8 ;
 int has_i8 ;

__attribute__((used)) static BOOL IsValidVariantClearVT(VARTYPE vt, VARTYPE extraFlags)
{
  BOOL ret = FALSE;


  if ((vt <= VT_LPWSTR || vt == VT_RECORD || vt == VT_CLSID) &&
      vt != (VARTYPE)15 &&
      (vt < (VARTYPE)24 || vt > (VARTYPE)31) &&
      (!(extraFlags & (VT_BYREF|VT_ARRAY)) || vt > VT_NULL) &&
      (extraFlags == 0 || extraFlags == VT_BYREF || extraFlags == VT_ARRAY ||
       extraFlags == (VT_ARRAY|VT_BYREF)))
    ret = TRUE;

  if (!has_i8 && (vt == VT_I8 || vt == VT_UI8))
    ret = FALSE;
  return ret;
}
