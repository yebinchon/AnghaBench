
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MEASUREITEMSTRUCT ;
typedef int LPARAM ;
typedef int HWND ;


 int DestroyWindow (int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_MEASUREITEM ;
 int create_rebar_control () ;
 int g_parent_measureitem ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_notification(void)
{
    MEASUREITEMSTRUCT mis;
    HWND rebar;

    rebar = create_rebar_control();

    g_parent_measureitem = 0;
    SendMessageA(rebar, WM_MEASUREITEM, 0, (LPARAM)&mis);
    ok(g_parent_measureitem == 1, "got %d\n", g_parent_measureitem);

    DestroyWindow(rebar);
}
