
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwValueLen; scalar_t__ lpValue; } ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef scalar_t__ LPCWSTR ;
typedef int LOGFONTW ;
typedef int HRESULT ;
typedef int HDC ;


 int MSSTYLES_GetFont (scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int ZeroMemory (int *,int) ;

HRESULT MSSTYLES_GetPropertyFont(PTHEME_PROPERTY tp, HDC hdc, LOGFONTW *pFont)
{
    LPCWSTR lpCur = tp->lpValue;
    LPCWSTR lpEnd = tp->lpValue + tp->dwValueLen;
    HRESULT hr;

    ZeroMemory(pFont, sizeof(LOGFONTW));
    hr = MSSTYLES_GetFont (lpCur, lpEnd, &lpCur, pFont);

    return hr;
}
