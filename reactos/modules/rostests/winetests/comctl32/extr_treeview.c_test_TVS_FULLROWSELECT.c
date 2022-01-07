
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int DestroyWindow (int ) ;
 int GWL_STYLE ;
 int GetWindowLongA (int ,int ) ;
 int SetWindowLongA (int ,int ,int) ;
 int TVS_FULLROWSELECT ;
 int TVS_HASLINES ;
 int create_treeview_control (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_TVS_FULLROWSELECT(void)
{
    DWORD style;
    HWND hwnd;


    hwnd = create_treeview_control(TVS_FULLROWSELECT);

    style = GetWindowLongA(hwnd, GWL_STYLE);
    ok((style & (TVS_FULLROWSELECT | TVS_HASLINES)) == (TVS_FULLROWSELECT | TVS_HASLINES), "got style 0x%08x\n", style);

    DestroyWindow(hwnd);


    hwnd = create_treeview_control(0);

    style = GetWindowLongA(hwnd, GWL_STYLE);
    SetWindowLongA(hwnd, GWL_STYLE, style | TVS_FULLROWSELECT);
    style = GetWindowLongA(hwnd, GWL_STYLE);
    ok(style & TVS_FULLROWSELECT, "got style 0x%08x\n", style);

    DestroyWindow(hwnd);
}
