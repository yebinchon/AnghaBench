
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONGLONG ;
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_8__ {int cVal; int bVal; int iVal; int uiVal; int lVal; int ulVal; char* pszVal; int * pwszVal; TYPE_2__ uhVal; TYPE_1__ hVal; } ;
struct TYPE_9__ {int vt; TYPE_3__ u; } ;
typedef TYPE_4__* REFPROPVARIANT ;
typedef int LONGLONG ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int DISP_E_TYPEMISMATCH ;
 int ERROR_ARITHMETIC_OVERFLOW ;
 int E_NOTIMPL ;
 scalar_t__ FALSE ;
 int FIXME (char*,int) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int S_OK ;
 scalar_t__ TRUE ;
 int _strtoi64 (char*,char**,int ) ;
 int strtolW (int *,int **,int ) ;

__attribute__((used)) static HRESULT PROPVAR_ConvertNumber(REFPROPVARIANT pv, int dest_bits,
                                     BOOL dest_signed, LONGLONG *res)
{
    BOOL src_signed;

    switch (pv->vt)
    {
    case 137:
        src_signed = TRUE;
        *res = pv->u.cVal;
        break;
    case 131:
        src_signed = FALSE;
        *res = pv->u.bVal;
        break;
    case 136:
        src_signed = TRUE;
        *res = pv->u.iVal;
        break;
    case 130:
        src_signed = FALSE;
        *res = pv->u.uiVal;
        break;
    case 135:
        src_signed = TRUE;
        *res = pv->u.lVal;
        break;
    case 129:
        src_signed = FALSE;
        *res = pv->u.ulVal;
        break;
    case 134:
        src_signed = TRUE;
        *res = pv->u.hVal.QuadPart;
        break;
    case 128:
        src_signed = FALSE;
        *res = pv->u.uhVal.QuadPart;
        break;
    case 138:
        src_signed = FALSE;
        *res = 0;
        break;
    case 133:
    {
        char *end;
        *res = _strtoi64(pv->u.pszVal, &end, 0);
        if (pv->u.pszVal == end)
            return DISP_E_TYPEMISMATCH;
        src_signed = *res < 0;
        break;
    }
    case 132:
    case 139:
    {
        WCHAR *end;
        *res = strtolW(pv->u.pwszVal, &end, 0);
        if (pv->u.pwszVal == end)
            return DISP_E_TYPEMISMATCH;
        src_signed = *res < 0;
        break;
    }
    default:
        FIXME("unhandled vt %d\n", pv->vt);
        return E_NOTIMPL;
    }

    if (*res < 0 && src_signed != dest_signed)
        return HRESULT_FROM_WIN32(ERROR_ARITHMETIC_OVERFLOW);

    if (dest_bits < 64)
    {
        if (dest_signed)
        {
            if (*res >= ((LONGLONG)1 << (dest_bits-1)) ||
                *res < ((LONGLONG)-1 << (dest_bits-1)))
                return HRESULT_FROM_WIN32(ERROR_ARITHMETIC_OVERFLOW);
        }
        else
        {
            if ((ULONGLONG)(*res) >= ((ULONGLONG)1 << dest_bits))
                return HRESULT_FROM_WIN32(ERROR_ARITHMETIC_OVERFLOW);
        }
    }

    return S_OK;
}
