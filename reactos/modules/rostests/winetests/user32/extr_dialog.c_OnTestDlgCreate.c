
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCREATESTRUCTA ;
typedef int HWND ;
typedef int HMENU ;
typedef int BOOL ;


 int BS_PUSHBUTTON ;
 int BS_TEXT ;
 void* CreateWindowExA (int,char*,char*,int,int,int,int,int,int ,int ,int ,int ) ;
 int ES_AUTOHSCROLL ;
 int ES_LEFT ;
 int FALSE ;
 scalar_t__ IDCANCEL ;
 int TRUE ;
 int WS_CHILDWINDOW ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_LEFT ;
 int WS_EX_LTRREADING ;
 int WS_EX_NOPARENTNOTIFY ;
 int WS_EX_RIGHTSCROLLBAR ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 int g_hinst ;
 void* g_hwndTestDlgBut1 ;
 void* g_hwndTestDlgBut2 ;
 void* g_hwndTestDlgEdit ;

__attribute__((used)) static BOOL OnTestDlgCreate (HWND hwnd, LPCREATESTRUCTA lpcs)
{
    g_hwndTestDlgEdit = CreateWindowExA( WS_EX_LEFT | WS_EX_LTRREADING |
            WS_EX_RIGHTSCROLLBAR | WS_EX_NOPARENTNOTIFY | WS_EX_CLIENTEDGE,
            "Edit", "Edit",
            WS_CHILDWINDOW | WS_VISIBLE | WS_TABSTOP | ES_LEFT | ES_AUTOHSCROLL,
            16,33,184,24, hwnd, (HMENU)101, g_hinst, 0);
    if (!g_hwndTestDlgEdit) return FALSE;

    g_hwndTestDlgBut1 = CreateWindowExA( WS_EX_LEFT | WS_EX_LTRREADING | WS_EX_RIGHTSCROLLBAR
            | WS_EX_NOPARENTNOTIFY,
            "button", "Button &1",
            WS_CHILDWINDOW | WS_VISIBLE | WS_TABSTOP | BS_PUSHBUTTON | BS_TEXT,
            204,33,30,24, hwnd, (HMENU)201, g_hinst, 0);
    if (!g_hwndTestDlgBut1) return FALSE;

    g_hwndTestDlgBut2 = CreateWindowExA( WS_EX_LEFT | WS_EX_LTRREADING | WS_EX_RIGHTSCROLLBAR
            | WS_EX_NOPARENTNOTIFY, "button",
            "Button &2",
            WS_CHILDWINDOW | WS_VISIBLE | WS_TABSTOP | BS_PUSHBUTTON | BS_TEXT,
            90,102,80,24, hwnd, (HMENU)IDCANCEL, g_hinst, 0);
    if (!g_hwndTestDlgBut2) return FALSE;

    return TRUE;
}
