
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef scalar_t__ LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef int HRESULT ;
typedef int CIMTYPE ;


 int CIM_BOOLEAN ;
 int CIM_SINT16 ;
 int CIM_SINT32 ;
 int CIM_STRING ;
 int CIM_UINT16 ;
 int CIM_UINT32 ;
 int ERR (char*,int) ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int VT_ARRAY ;







 scalar_t__ V_BOOL (int *) ;
 int V_BSTR (int *) ;
 scalar_t__ V_I2 (int *) ;
 scalar_t__ V_I4 (int *) ;
 scalar_t__ V_UI2 (int *) ;
 scalar_t__ V_UI4 (int *) ;
 int V_VT (int *) ;
 int WBEM_E_FAILED ;
 scalar_t__ heap_strdupW (int ) ;
 scalar_t__ to_array (int *,int *) ;

HRESULT to_longlong( VARIANT *var, LONGLONG *val, CIMTYPE *type )
{
    if (!var)
    {
        *val = 0;
        return S_OK;
    }
    if (V_VT( var ) & VT_ARRAY)
    {
        *val = (INT_PTR)to_array( var, type );
        if (!*val) return E_OUTOFMEMORY;
        return S_OK;
    }
    switch (V_VT( var ))
    {
    case 134:
        *val = V_BOOL( var );
        *type = CIM_BOOLEAN;
        break;
    case 133:
        *val = (INT_PTR)heap_strdupW( V_BSTR( var ) );
        if (!*val) return E_OUTOFMEMORY;
        *type = CIM_STRING;
        break;
    case 132:
        *val = V_I2( var );
        *type = CIM_SINT16;
        break;
    case 129:
        *val = V_UI2( var );
        *type = CIM_UINT16;
        break;
    case 131:
        *val = V_I4( var );
        *type = CIM_SINT32;
        break;
    case 128:
        *val = V_UI4( var );
        *type = CIM_UINT32;
        break;
    case 130:
        *val = 0;
        break;
    default:
        ERR("unhandled type %u\n", V_VT( var ));
        return WBEM_E_FAILED;
    }
    return S_OK;
}
