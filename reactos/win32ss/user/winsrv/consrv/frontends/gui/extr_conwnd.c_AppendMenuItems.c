
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef scalar_t__ UINT_PTR ;
typedef size_t UINT ;
struct TYPE_3__ {scalar_t__ uID; scalar_t__ wCmdID; struct TYPE_3__* SubMenu; } ;
typedef int * HMENU ;
typedef TYPE_1__ GUICONSOLE_MENUITEM ;


 int ARRAYSIZE (int *) ;
 int AppendMenuW (int *,int,scalar_t__,int *) ;
 int ConSrvDllInstance ;
 int * CreatePopupMenu () ;
 int DestroyMenu (int *) ;
 scalar_t__ LoadStringW (int ,size_t,int *,int ) ;
 int MF_POPUP ;
 int MF_SEPARATOR ;
 int MF_STRING ;

__attribute__((used)) static VOID
AppendMenuItems(HMENU hMenu,
                const GUICONSOLE_MENUITEM *Items)
{
    UINT i = 0;
    WCHAR szMenuString[255];
    HMENU hSubMenu;

    do
    {
        if (Items[i].uID != (UINT)-1)
        {
            if (LoadStringW(ConSrvDllInstance,
                            Items[i].uID,
                            szMenuString,
                            ARRAYSIZE(szMenuString)) > 0)
            {
                if (Items[i].SubMenu != ((void*)0))
                {
                    hSubMenu = CreatePopupMenu();
                    if (hSubMenu != ((void*)0))
                    {
                        AppendMenuItems(hSubMenu, Items[i].SubMenu);

                        if (!AppendMenuW(hMenu,
                                         MF_STRING | MF_POPUP,
                                         (UINT_PTR)hSubMenu,
                                         szMenuString))
                        {
                            DestroyMenu(hSubMenu);
                        }
                    }
                }
                else
                {
                    AppendMenuW(hMenu,
                                MF_STRING,
                                Items[i].wCmdID,
                                szMenuString);
                }
            }
        }
        else
        {
            AppendMenuW(hMenu,
                        MF_SEPARATOR,
                        0,
                        ((void*)0));
        }
        i++;
    } while (!(Items[i].uID == 0 && Items[i].SubMenu == ((void*)0) && Items[i].wCmdID == 0));
}
