
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; } ;
typedef TYPE_1__ MENUITEMINFOA ;
typedef int HMENU ;
typedef int BOOL ;


 int CreateMenu () ;
 int DestroyMenu (int ) ;
 scalar_t__ ERROR_MENU_ITEM_NOT_FOUND ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetMenuItemInfoA (int ,int ,int ,TYPE_1__*) ;
 int SetLastError (int) ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL correct_behavior(void)
{
    HMENU hmenu;
    MENUITEMINFOA info;
    BOOL rc;

    hmenu = CreateMenu();

    memset(&info, 0, sizeof(MENUITEMINFOA));
    info.cbSize= sizeof(MENUITEMINFOA);
    SetLastError(0xdeadbeef);
    rc = GetMenuItemInfoA(hmenu, 0, TRUE, &info);




    if (!rc && GetLastError() != ERROR_MENU_ITEM_NOT_FOUND)
    {
        win_skip("NT4 and below can't handle a bigger MENUITEMINFO struct\n");
        DestroyMenu(hmenu);
        return FALSE;
    }

    DestroyMenu(hmenu);
    return TRUE;
}
