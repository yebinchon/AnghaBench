
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int cbSize; scalar_t__ dwItemData; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef int HWND ;
typedef int HMENU ;
typedef int CPlItem ;


 int FALSE ;
 int GetMenu (int ) ;
 int GetMenuItemInfoW (int ,int ,int ,TYPE_1__*) ;
 int GetSubMenu (int ,int ) ;
 int MIIM_DATA ;

__attribute__((used)) static CPlItem* Control_GetCPlItem_From_MenuID(HWND hWnd, UINT id)
{
    HMENU hMenu, hSubMenu;
    MENUITEMINFOW mii;


    hMenu = GetMenu(hWnd);

    if (!hMenu)
        return ((void*)0);

    hSubMenu = GetSubMenu(hMenu, 0);

    if (!hSubMenu)
        return ((void*)0);

    mii.cbSize = sizeof(MENUITEMINFOW);
    mii.fMask = MIIM_DATA;

    if (!GetMenuItemInfoW(hSubMenu, id, FALSE, &mii))
        return ((void*)0);

    return (CPlItem *) mii.dwItemData;
}
