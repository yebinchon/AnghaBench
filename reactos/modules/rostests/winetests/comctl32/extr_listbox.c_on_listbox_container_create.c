
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HMENU ;
typedef int CREATESTRUCTA ;
typedef int BOOL ;


 void* CreateWindowA (int ,char*,int,int,int,int,int,int ,int ,int *,int ) ;
 int FALSE ;
 scalar_t__ ID_TEST_LABEL ;
 scalar_t__ ID_TEST_LISTBOX ;
 int TRUE ;
 int WC_LISTBOXA ;
 int WC_STATICA ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 void* g_label ;
 void* g_listBox ;

__attribute__((used)) static BOOL on_listbox_container_create(HWND hwnd, CREATESTRUCTA *lpcs)
{
    g_label = CreateWindowA(WC_STATICA, "Contents of static control before DlgDirList.",
        WS_CHILD | WS_VISIBLE, 10, 10, 512, 32, hwnd, (HMENU)ID_TEST_LABEL, ((void*)0), 0);
    if (!g_label) return FALSE;

    g_listBox = CreateWindowA(WC_LISTBOXA, "DlgDirList test",
        WS_CHILD | WS_VISIBLE | WS_TABSTOP | WS_BORDER | WS_VSCROLL, 10, 60, 256, 256,
        hwnd, (HMENU)ID_TEST_LISTBOX, ((void*)0), 0);
    if (!g_listBox) return FALSE;

    return TRUE;
}
