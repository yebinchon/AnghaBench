
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ biSize; } ;
struct TYPE_10__ {scalar_t__ biSize; TYPE_1__ bmiHeader; } ;
typedef TYPE_2__ VOID ;
typedef int UINT ;
typedef scalar_t__ HDC ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_2__ BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int CBM_CREATDIB ;
 int CBM_INIT ;
 int DIB_PAL_COLORS ;
 int DIB_RGB_COLORS ;
 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 TYPE_2__ const* INVALID_POINTER ;
 int TRUE ;

BOOL
GetExpected(
    DWORD *pdwError,
    HDC hdc,
    const BITMAPINFOHEADER *lpbmih,
    DWORD fdwInit,
    const VOID *lpbInit,
    const BITMAPINFO *lpbmi,
    UINT fuUsage)
{
    if (fuUsage > 2)
    {
        *pdwError = ERROR_INVALID_PARAMETER;
        return FALSE;
    }

    if (fuUsage != DIB_RGB_COLORS)
    {
        if (hdc == (HDC)-1)
        {
            return FALSE;
        }
    }

    if (fdwInit & CBM_INIT)
    {
        if (!lpbmih)
        {
            if (!lpbInit || (lpbInit == INVALID_POINTER)) return FALSE;
        }
        else
        {
            if (lpbInit)
            {
                if (lpbInit == INVALID_POINTER) return FALSE;
                if (!lpbmi || (lpbmi == INVALID_POINTER)) return FALSE;
                if (lpbmi->bmiHeader.biSize == 0) return FALSE;
                if (fuUsage == 2) return FALSE;
            }
        }
    }


    if (fdwInit & CBM_CREATDIB)
    {
        if (fuUsage == 2) return FALSE;
        if ((fuUsage == DIB_PAL_COLORS) && !hdc)
        {
            return FALSE;
        }

        if (fdwInit & CBM_INIT)
        {
            if (!lpbInit || (lpbInit == INVALID_POINTER)) return FALSE;
        }

        if ((!lpbmi) || (lpbmi == INVALID_POINTER) || (lpbmi->bmiHeader.biSize == 0))
        {
            return FALSE;
        }
    }
    else
    {

        if ((lpbmih == ((void*)0)) ||
            (lpbmih == INVALID_POINTER) ||
            (lpbmih->biSize == 0))
        {
            return FALSE;
        }

        if (hdc == (HDC)-1)
        {
            *pdwError = ERROR_INVALID_PARAMETER;
            return FALSE;
        }


        if (lpbmi == INVALID_POINTER) return FALSE;
    }

    return TRUE;
}
