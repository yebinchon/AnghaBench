
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ DWORD ;


 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GetClassNameA (int *,char*,int) ;
 int * GetWindow (int *,int ) ;
 void* SendMessageA (int *,int ,int ,int ) ;
 int TB_ADDSTRINGA ;
 int TB_GETTEXTROWS ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void toolbarcheck( HWND hDlg)
{


    int maxtextrows;
    HWND ctrl;
    DWORD ret;
    char classname[20];

    for( ctrl = GetWindow( hDlg, GW_CHILD);
            ctrl ; ctrl = GetWindow( ctrl, GW_HWNDNEXT)) {
        GetClassNameA( ctrl, classname, 10);
        classname[7] = '\0';
        if( !strcmp( classname, "Toolbar")) break;
    }
    ok( ctrl != ((void*)0), "could not get the toolbar control\n");
    ret = SendMessageA( ctrl, TB_ADDSTRINGA, 0, (LPARAM)"winetestwinetest\0\0");
    ok( ret == 0, "addstring returned %d (expected 0)\n", ret);
    maxtextrows = SendMessageA( ctrl, TB_GETTEXTROWS, 0, 0);
    ok( maxtextrows == 0 || broken(maxtextrows == 1),
        "Get(Max)TextRows returned %d (expected 0)\n", maxtextrows);
}
