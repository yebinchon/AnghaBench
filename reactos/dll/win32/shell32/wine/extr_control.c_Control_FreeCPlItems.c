
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int total_subprogs; } ;
struct TYPE_5__ {int cbSize; scalar_t__ dwItemData; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef int LPVOID ;
typedef int HWND ;
typedef int HMENU ;
typedef TYPE_2__ CPanel ;


 int FALSE ;
 int GetMenu (int ) ;
 int GetMenuItemInfoW (int ,unsigned int,int ,TYPE_1__*) ;
 int GetProcessHeap () ;
 int GetSubMenu (int ,int ) ;
 int HeapFree (int ,int ,int ) ;
 unsigned int IDM_CPANEL_APPLET_BASE ;
 int MIIM_DATA ;

__attribute__((used)) static void Control_FreeCPlItems(HWND hWnd, CPanel *panel)
{
    HMENU hMenu, hSubMenu;
    MENUITEMINFOW mii;
    unsigned int i;


    hMenu = GetMenu(hWnd);

    if (!hMenu)
        return;

    hSubMenu = GetSubMenu(hMenu, 0);

    if (!hSubMenu)
        return;


    for (i = IDM_CPANEL_APPLET_BASE; i <= IDM_CPANEL_APPLET_BASE + panel->total_subprogs; i++)
    {
        mii.cbSize = sizeof(MENUITEMINFOW);
        mii.fMask = MIIM_DATA;

        if (!GetMenuItemInfoW(hSubMenu, i, FALSE, &mii))
            continue;

        HeapFree(GetProcessHeap(), 0, (LPVOID) mii.dwItemData);
    }
}
