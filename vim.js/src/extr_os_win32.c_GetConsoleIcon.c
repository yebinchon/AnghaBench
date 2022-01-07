
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ HICON ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ ICON_BIG ;
 scalar_t__ ICON_SMALL ;
 scalar_t__ SendMessage (int *,int ,int ,int ) ;
 int TRUE ;
 int WM_GETICON ;

__attribute__((used)) static BOOL
GetConsoleIcon(
    HWND hWnd,
    HICON *phIconSmall,
    HICON *phIcon)
{
    if (hWnd == ((void*)0))
 return FALSE;

    if (phIconSmall != ((void*)0))
 *phIconSmall = (HICON)SendMessage(hWnd, WM_GETICON,
            (WPARAM)ICON_SMALL, (LPARAM)0);
    if (phIcon != ((void*)0))
 *phIcon = (HICON)SendMessage(hWnd, WM_GETICON,
       (WPARAM)ICON_BIG, (LPARAM)0);
    return TRUE;
}
