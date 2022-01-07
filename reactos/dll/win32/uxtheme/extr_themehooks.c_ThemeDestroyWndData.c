
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* SetWindowRgn ) (int ,int ,int ) ;} ;
struct TYPE_4__ {scalar_t__ hthemeScrollbar; scalar_t__ hthemeWindow; int * hTabBackgroundBmp; int * hTabBackgroundBrush; scalar_t__ HasThemeRgn; } ;
typedef TYPE_1__* PWND_DATA ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int CloseThemeData (scalar_t__) ;
 int DeleteObject (int *) ;
 scalar_t__ GetCurrentProcessId () ;
 int GetProcessHeap () ;
 scalar_t__ GetPropW (int ,int ) ;
 scalar_t__ GetWindowTheme (int ) ;
 int GetWindowThreadProcessId (int ,scalar_t__*) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ MAKEINTATOM (int ) ;
 int SetPropW (int ,int ,int *) ;
 int TRUE ;
 int atWndContext ;
 TYPE_2__ g_user32ApiHook ;
 int stub1 (int ,int ,int ) ;

void ThemeDestroyWndData(HWND hWnd)
{
    PWND_DATA pwndData;
    DWORD ProcessId;


    GetWindowThreadProcessId(hWnd, &ProcessId);
    if(ProcessId != GetCurrentProcessId())
    {
        return;
    }

    pwndData = (PWND_DATA)GetPropW(hWnd, (LPCWSTR)MAKEINTATOM(atWndContext));
    if(pwndData == ((void*)0))
    {
        return;
    }

    if(pwndData->HasThemeRgn)
    {
        g_user32ApiHook.SetWindowRgn(hWnd, 0, TRUE);
    }

    if (pwndData->hTabBackgroundBrush != ((void*)0))
    {
        CloseThemeData(GetWindowTheme(hWnd));

        DeleteObject(pwndData->hTabBackgroundBrush);
    }

    if (pwndData->hTabBackgroundBmp != ((void*)0))
    {
        DeleteObject(pwndData->hTabBackgroundBmp);
    }

    if (pwndData->hthemeWindow)
    {
        CloseThemeData(pwndData->hthemeWindow);
    }

    if (pwndData->hthemeScrollbar)
    {
        CloseThemeData(pwndData->hthemeScrollbar);
    }

    HeapFree(GetProcessHeap(), 0, pwndData);

    SetPropW( hWnd, (LPCWSTR)MAKEINTATOM(atWndContext), ((void*)0));
}
