
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwValueLen; scalar_t__ lpValue; } ;
struct TYPE_5__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PTHEME_PROPERTY ;
typedef scalar_t__ LPCWSTR ;
typedef int HRESULT ;


 int E_PROP_ID_UNSUPPORTED ;
 int MSSTYLES_GetNextInteger (scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int S_OK ;
 int TRACE (char*) ;

HRESULT MSSTYLES_GetPropertyRect(PTHEME_PROPERTY tp, RECT *pRect)
{
    LPCWSTR lpCur = tp->lpValue;
    LPCWSTR lpEnd = tp->lpValue + tp->dwValueLen;

    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pRect->left);
    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pRect->top);
    MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pRect->right);
    if(!MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pRect->bottom)) {
        TRACE("Could not parse rect property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    return S_OK;
}
