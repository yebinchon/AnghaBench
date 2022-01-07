
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCREATESTRUCTA ;
typedef int HWND ;
typedef int HMENU ;
typedef int BOOL ;


 int BS_DEFPUSHBUTTON ;
 int BS_PUSHBUTTON ;
 int BS_TEXT ;
 void* CreateWindowA (char*,char*,int,int,int,int,int,int ,int ,int ,int ) ;
 int FALSE ;
 scalar_t__ IDCANCEL ;
 int TRUE ;
 int WS_CHILD ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 int g_hinst ;
 void* g_hwndButton1 ;
 void* g_hwndButton2 ;
 void* g_hwndButtonCancel ;

__attribute__((used)) static BOOL OnMainWindowCreate(HWND hwnd, LPCREATESTRUCTA lpcs)
{
    g_hwndButton1 = CreateWindowA("button", "Button &1",
            WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_DEFPUSHBUTTON | BS_TEXT,
            10, 10, 80, 80, hwnd, (HMENU)100, g_hinst, 0);
    if (!g_hwndButton1) return FALSE;

    g_hwndButton2 = CreateWindowA("button", "Button &2",
            WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON | BS_TEXT,
            110, 10, 80, 80, hwnd, (HMENU)200, g_hinst, 0);
    if (!g_hwndButton2) return FALSE;

    g_hwndButtonCancel = CreateWindowA("button", "Cancel",
            WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_PUSHBUTTON | BS_TEXT,
            210, 10, 80, 80, hwnd, (HMENU)IDCANCEL, g_hinst, 0);
    if (!g_hwndButtonCancel) return FALSE;

    return TRUE;
}
