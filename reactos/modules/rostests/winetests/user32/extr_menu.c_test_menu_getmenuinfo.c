
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int member_0; } ;
typedef TYPE_1__ MENUINFO ;
typedef int * HMENU ;
typedef int DWORD ;
typedef int BOOL ;


 int * CreateMenu () ;
 int DestroyMenu (int *) ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int assert (int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pGetMenuInfo (int *,TYPE_1__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_menu_getmenuinfo(void)
{
    HMENU hmenu;
    MENUINFO mi = {0};
    BOOL ret;
    DWORD gle;

    if (!pGetMenuInfo)
    {
        win_skip("GetMenuInfo is not available\n");
        return;
    }


    hmenu = CreateMenu();
    assert( hmenu);

    SetLastError(0xdeadbeef);
    ret = pGetMenuInfo( hmenu, ((void*)0));
    gle= GetLastError();
    ok( !ret, "GetMenuInfo() should have failed\n");
    ok( gle == ERROR_INVALID_PARAMETER ||
        broken(gle == 0xdeadbeef),
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);
    SetLastError(0xdeadbeef);
    mi.cbSize = 0;
    ret = pGetMenuInfo( hmenu, &mi);
    gle= GetLastError();
    ok( !ret, "GetMenuInfo() should have failed\n");
    ok( gle == ERROR_INVALID_PARAMETER ||
        broken(gle == 0xdeadbeef),
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);
    SetLastError(0xdeadbeef);
    mi.cbSize = sizeof( MENUINFO);
    ret = pGetMenuInfo( hmenu, &mi);
    gle= GetLastError();
    ok( ret, "GetMenuInfo() should have succeeded\n");
    ok( gle == 0xdeadbeef, "GetMenuInfo() error got %u\n", gle);
    SetLastError(0xdeadbeef);
    mi.cbSize = 0;
    ret = pGetMenuInfo( ((void*)0), &mi);
    gle= GetLastError();
    ok( !ret, "GetMenuInfo() should have failed\n");
    ok( gle == ERROR_INVALID_PARAMETER ||
        broken(gle == 0xdeadbeef),
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);

    DestroyMenu( hmenu);
    return;
}
