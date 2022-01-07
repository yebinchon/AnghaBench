
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; char* pszText; int iImage; } ;
typedef TYPE_1__ TCITEMA ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowA (int ,char*,int,int,int,int,int,int *,int *,int *,int ) ;
 int GWL_STYLE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int *,int *,int ,int ) ;
 int SW_SHOW ;
 int SendMessageA (int *,int ,int,int ) ;
 int SetWindowLongA (int *,int ,int) ;
 int ShowWindow (int *,int ) ;
 int Sleep (int) ;
 int TCM_INSERTITEMA ;
 int TCS_FOCUSNEVER ;
 int WC_TABCONTROLA ;
 int WM_SETFONT ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 scalar_t__ hFont ;
 int ok (int ,char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HWND
create_tabcontrol (DWORD style, DWORD mask)
{
    HWND handle;
    TCITEMA tcNewTab;
    static char text1[] = "Tab 1",
    text2[] = "Wide Tab 2",
    text3[] = "T 3";

    handle = CreateWindowA(WC_TABCONTROLA, "TestTab",
            WS_CLIPSIBLINGS | WS_CLIPCHILDREN | TCS_FOCUSNEVER | style, 10, 10, 300, 100, ((void*)0),
            ((void*)0), ((void*)0), 0);
    ok(handle != ((void*)0), "failed to create tab wnd\n");

    SetWindowLongA(handle, GWL_STYLE, WS_CLIPSIBLINGS | WS_CLIPCHILDREN | TCS_FOCUSNEVER | style);
    SendMessageA(handle, WM_SETFONT, 0, (LPARAM)hFont);

    tcNewTab.mask = mask;
    tcNewTab.pszText = text1;
    tcNewTab.iImage = 0;
    SendMessageA(handle, TCM_INSERTITEMA, 0, (LPARAM)&tcNewTab);
    tcNewTab.pszText = text2;
    tcNewTab.iImage = 1;
    SendMessageA(handle, TCM_INSERTITEMA, 1, (LPARAM)&tcNewTab);
    tcNewTab.pszText = text3;
    tcNewTab.iImage = 2;
    SendMessageA(handle, TCM_INSERTITEMA, 2, (LPARAM)&tcNewTab);

    if (winetest_interactive)
    {
        ShowWindow (handle, SW_SHOW);
        RedrawWindow (handle, ((void*)0), 0, RDW_UPDATENOW);
        Sleep (1000);
    }

    return handle;
}
