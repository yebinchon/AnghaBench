
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LONGLONG ;
typedef int HRESULT ;


 int ERR (char*,int) ;







 int S_OK ;
 int WBEM_E_INVALID_QUERY ;
 int eval_like (int const*,int const*) ;
 int strcmpW (int const*,int const*) ;

__attribute__((used)) static HRESULT eval_strcmp( UINT op, const WCHAR *lstr, const WCHAR *rstr, LONGLONG *val )
{
    if (!lstr || !rstr)
    {
        *val = 0;
        return S_OK;
    }
    switch (op)
    {
    case 134:
        *val = !strcmpW( lstr, rstr );
        break;
    case 132:
        *val = strcmpW( lstr, rstr ) > 0;
        break;
    case 129:
        *val = strcmpW( lstr, rstr ) < 0;
        break;
    case 131:
        *val = strcmpW( lstr, rstr ) <= 0;
        break;
    case 133:
        *val = strcmpW( lstr, rstr ) >= 0;
        break;
    case 128:
        *val = strcmpW( lstr, rstr );
        break;
    case 130:
        *val = eval_like( lstr, rstr );
        break;
    default:
        ERR("unhandled operator %u\n", op);
        return WBEM_E_INVALID_QUERY;
    }
    return S_OK;
}
