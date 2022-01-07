
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwValueLen; int lpValue; } ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef int LPWSTR ;
typedef int HRESULT ;


 int S_OK ;
 int lstrcpynW (int ,int ,int ) ;
 int min (scalar_t__,int) ;

HRESULT MSSTYLES_GetPropertyString(PTHEME_PROPERTY tp, LPWSTR pszBuff, int cchMaxBuffChars)
{
    lstrcpynW(pszBuff, tp->lpValue, min(tp->dwValueLen+1, cchMaxBuffChars));
    return S_OK;
}
