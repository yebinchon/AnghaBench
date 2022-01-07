
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int DLGC_WANTARROWS ;
 int DLGC_WANTCHARS ;
 int DestroyWindow (int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int VK_TAB ;
 int WM_GETDLGCODE ;
 int create_treeview_control (int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_WM_GETDLGCODE(void)
{
    DWORD code;
    HWND hTree;

    hTree = create_treeview_control(0);

    code = SendMessageA(hTree, WM_GETDLGCODE, VK_TAB, 0);
    ok(code == (DLGC_WANTCHARS | DLGC_WANTARROWS), "0x%08x\n", code);

    DestroyWindow(hTree);
}
