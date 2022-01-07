
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int VARIANT ;
typedef int UINT_PTR ;
typedef int SHORT ;
typedef int LPUNKNOWN ;
typedef int LPDISPATCH ;
typedef int LONG64 ;
typedef int LONG ;
typedef int INT ;
typedef int DWORD ;
typedef int DECIMAL ;
typedef int DATE ;
typedef int CY ;
typedef int BYTE ;
typedef int BSTR ;
 int has_i8 ;
 int has_int_ptr ;

__attribute__((used)) static DWORD SAFEARRAY_GetVTSize(VARTYPE vt)
{
  switch (vt)
  {
    case 143:
    case 135: return sizeof(BYTE);
    case 150:
    case 142:
    case 134: return sizeof(SHORT);
    case 141:
    case 133:
    case 137:
    case 144: return sizeof(LONG);
    case 136: return sizeof(LONG64);
    case 140:
    case 132:
      if (has_i8)
        return sizeof(LONG64);
      break;
    case 139:
    case 131: return sizeof(INT);
    case 138:
    case 130:
      if (has_int_ptr)
        return sizeof(UINT_PTR);
      break;
    case 148: return sizeof(CY);
    case 147: return sizeof(DATE);
    case 149: return sizeof(BSTR);
    case 145: return sizeof(LPDISPATCH);
    case 128: return sizeof(VARIANT);
    case 129: return sizeof(LPUNKNOWN);
    case 146: return sizeof(DECIMAL);
  }
  return 0;
}
