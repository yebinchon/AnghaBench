
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int HRESULT ;


 int DISP_E_BADVARTYPE ;
 int S_OK ;
 int VT_ARRAY ;
 int VT_BYREF ;
 int VT_CLSID ;
 int VT_EXTRA_TYPE ;
 int VT_NULL ;
 int VT_RECORD ;
 int VT_RESERVED ;
 int VT_TYPEMASK ;
 int VT_VECTOR ;
 int VT_VOID ;

__attribute__((used)) static inline HRESULT VARIANT_ValidateType(VARTYPE vt)
{
  VARTYPE vtExtra = vt & VT_EXTRA_TYPE;

  vt &= VT_TYPEMASK;

  if (!(vtExtra & (VT_VECTOR|VT_RESERVED)))
  {
    if (vt < VT_VOID || vt == VT_RECORD || vt == VT_CLSID)
    {
      if ((vtExtra & (VT_BYREF|VT_ARRAY)) && vt <= VT_NULL)
        return DISP_E_BADVARTYPE;
      if (vt != (VARTYPE)15)
        return S_OK;
    }
  }
  return DISP_E_BADVARTYPE;
}
