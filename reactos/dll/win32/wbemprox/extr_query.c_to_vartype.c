
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int CIMTYPE ;
 int ERR (char*,int) ;
 int VT_BOOL ;
 int VT_BSTR ;
 int VT_I1 ;
 int VT_I2 ;
 int VT_I4 ;
 int VT_I8 ;
 int VT_UI1 ;
 int VT_UI2 ;
 int VT_UI4 ;
 int VT_UI8 ;

VARTYPE to_vartype( CIMTYPE type )
{
    switch (type)
    {
    case 138: return VT_BOOL;
    case 132:
    case 137: return VT_BSTR;
    case 133: return VT_I1;
    case 128: return VT_UI1;
    case 136: return VT_I2;
    case 131: return VT_UI2;
    case 135: return VT_I4;
    case 130: return VT_UI4;
    case 134: return VT_I8;
    case 129: return VT_UI8;
    default:
        ERR("unhandled type %u\n", type);
        break;
    }
    return 0;
}
