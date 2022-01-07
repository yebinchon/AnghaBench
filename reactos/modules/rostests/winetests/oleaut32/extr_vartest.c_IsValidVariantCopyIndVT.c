
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARTYPE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ VT_ARRAY ;
 scalar_t__ VT_NULL ;
 scalar_t__ VT_RESERVED ;
 scalar_t__ VT_VECTOR ;
 scalar_t__ VT_VOID ;

__attribute__((used)) static BOOL IsValidVariantCopyIndVT(VARTYPE vt, VARTYPE extraFlags)
{
  BOOL ret = FALSE;

  if ((extraFlags & VT_ARRAY) ||
     (vt > VT_NULL && vt != (VARTYPE)15 && vt < VT_VOID &&
     !(extraFlags & (VT_VECTOR|VT_RESERVED))))
  {
    ret = TRUE;
  }
  return ret;
}
