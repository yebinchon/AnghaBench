
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int * HMENU ;


 int DrawMenuBar (int ) ;
 int FALSE ;
 int * GetSystemMenu (int ,int ) ;
 int GuiConsoleAppendMenuItems (int *,int ) ;
 int GuiConsoleMainMenuItems ;

__attribute__((used)) static VOID
GuiConsoleCreateSysMenu(HWND hWnd)
{
    HMENU hMenu = GetSystemMenu(hWnd, FALSE);
    if (hMenu != ((void*)0))
    {
        GuiConsoleAppendMenuItems(hMenu, GuiConsoleMainMenuItems);
        DrawMenuBar(hWnd);
    }
}
