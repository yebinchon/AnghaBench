
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int btns ;
typedef int TBBUTTON ;
typedef int HWND ;


 int CHECK_IMAGELIST (int,int,int) ;
 int DestroyWindow (int ) ;
 int GetModuleHandleA (int *) ;
 int IDB_BITMAP_128x15 ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int TB_GETBUTTONSIZE ;
 int WS_VISIBLE ;
 int ZeroMemory (int **,int) ;
 int compare (int,int,char*) ;
 int hMainWnd ;
 int pCreateToolbarEx (int ,int ,int,int,int ,int ,int *,int,int,int,int,int,int) ;

__attribute__((used)) static void test_createtoolbarex(void)
{
    HWND hToolbar;
    TBBUTTON btns[3];
    ZeroMemory(&btns, sizeof(btns));

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, 20, 20, 16, 16, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 20, 20);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x1a001b, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, 4, 4, 16, 16, sizeof(TBBUTTON));
    CHECK_IMAGELIST(32, 4, 4);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xa000b, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, 0, 8, 12, 12, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 12, 12);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x120013, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, -1, 8, 12, 12, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 12, 8);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xe0013, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, -1, 8, -1, 12, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 16, 8);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xe0017, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, 0, 0, 12, -1, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 12, 16);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x160013, "%x");
    DestroyWindow(hToolbar);

    hToolbar = pCreateToolbarEx(hMainWnd, WS_VISIBLE, 1, 16, GetModuleHandleA(((void*)0)), IDB_BITMAP_128x15, btns,
        3, 0, 0, 0, 12, sizeof(TBBUTTON));
    CHECK_IMAGELIST(16, 16, 16);
    compare((int)SendMessageA(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x160017, "%x");
    DestroyWindow(hToolbar);
}
