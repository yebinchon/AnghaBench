
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwExStyle; } ;
struct TYPE_5__ {TYPE_1__ wi; int hWnd; } ;
typedef int PDWORD_PTR ;
typedef TYPE_2__* PDRAW_CONTEXT ;
typedef int LPCWSTR ;
typedef int * HICON ;


 int GCLP_HICON ;
 int GCLP_HICONSM ;
 scalar_t__ GetClassLongPtr (int ,int ) ;
 int ICON_BIG ;
 int ICON_SMALL ;
 int ICON_SMALL2 ;
 scalar_t__ IDI_WINLOGO ;
 int * LoadIconW (int *,int ) ;
 int SMTO_ABORTIFHUNG ;
 int SendMessageTimeout (int ,int ,int ,int ,int ,int,int ) ;
 int WM_GETICON ;
 int WS_EX_DLGMODALFRAME ;

__attribute__((used)) static HICON
UserGetWindowIcon(PDRAW_CONTEXT pcontext)
{
    HICON hIcon = ((void*)0);

    SendMessageTimeout(pcontext->hWnd, WM_GETICON, ICON_SMALL2, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        SendMessageTimeout(pcontext->hWnd, WM_GETICON, ICON_SMALL, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        SendMessageTimeout(pcontext->hWnd, WM_GETICON, ICON_BIG, 0, SMTO_ABORTIFHUNG, 1000, (PDWORD_PTR)&hIcon);

    if (!hIcon)
        hIcon = (HICON)GetClassLongPtr(pcontext->hWnd, GCLP_HICONSM);

    if (!hIcon)
        hIcon = (HICON)GetClassLongPtr(pcontext->hWnd, GCLP_HICON);


    if (!hIcon && !(pcontext->wi.dwExStyle & WS_EX_DLGMODALFRAME))
        hIcon = LoadIconW(((void*)0), (LPCWSTR)IDI_WINLOGO);

    return hIcon;
}
