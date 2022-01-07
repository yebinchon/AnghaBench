
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
__attribute__((used)) static DWORD SAFEARRAY_GetVTSize(VARTYPE vt)
{
  switch (vt)
  {
    case 144:
    case 135: return sizeof(BYTE);
    case 151:
    case 143:
    case 134: return sizeof(SHORT);
    case 142:
    case 133:
    case 138:
    case 145: return sizeof(LONG);
    case 137:
    case 141:
    case 132: return sizeof(LONG64);
    case 140:
    case 131: return sizeof(INT);
    case 139:
    case 130: return sizeof(UINT_PTR);
    case 149: return sizeof(CY);
    case 148: return sizeof(DATE);
    case 150: return sizeof(BSTR);
    case 146: return sizeof(LPDISPATCH);
    case 128: return sizeof(VARIANT);
    case 129: return sizeof(LPUNKNOWN);
    case 147: return sizeof(DECIMAL);



    case 136: return 32;
  }
  return 0;
}
