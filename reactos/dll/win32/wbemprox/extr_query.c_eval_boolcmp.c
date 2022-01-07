
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef int HRESULT ;


 scalar_t__ CIM_STRING ;
 int ERR (char*,scalar_t__) ;


 int S_OK ;
 int WBEM_E_INVALID_QUERY ;
 int strcmpiW (char const*,char const*) ;

__attribute__((used)) static HRESULT eval_boolcmp( UINT op, LONGLONG lval, LONGLONG rval, UINT ltype, UINT rtype, LONGLONG *val )
{
    static const WCHAR trueW[] = {'T','r','u','e',0};

    if (ltype == CIM_STRING) lval = !strcmpiW( (const WCHAR *)(INT_PTR)lval, trueW ) ? -1 : 0;
    else if (rtype == CIM_STRING) rval = !strcmpiW( (const WCHAR *)(INT_PTR)rval, trueW ) ? -1 : 0;

    switch (op)
    {
    case 129:
        *val = (lval == rval);
        break;
    case 128:
        *val = (lval != rval);
        break;
    default:
        ERR("unhandled operator %u\n", op);
        return WBEM_E_INVALID_QUERY;
    }
    return S_OK;
}
