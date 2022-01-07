
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cyBottomHeight; int cyTopHeight; int cxRightWidth; int cxLeftWidth; } ;
struct TYPE_5__ {scalar_t__ dwValueLen; scalar_t__ lpValue; } ;
typedef int RECT ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef TYPE_2__ MARGINS ;
typedef scalar_t__ LPCWSTR ;
typedef int HRESULT ;


 int E_PROP_ID_UNSUPPORTED ;
 int MSSTYLES_GetNextInteger (scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int S_OK ;
 int TRACE (char*) ;

HRESULT MSSTYLES_GetPropertyMargins(PTHEME_PROPERTY tp, RECT *prc, MARGINS *pMargins)
{
    LPCWSTR lpCur = tp->lpValue;
    LPCWSTR lpEnd = tp->lpValue + tp->dwValueLen;

    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pMargins->cxLeftWidth);
    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pMargins->cxRightWidth);
    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pMargins->cyTopHeight);
    if(!MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pMargins->cyBottomHeight)) {
        TRACE("Could not parse margins property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    return S_OK;
}
