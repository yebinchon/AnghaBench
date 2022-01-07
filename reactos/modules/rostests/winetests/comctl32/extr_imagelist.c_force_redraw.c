
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int ) ;
 int Sleep (int) ;
 int winetest_interactive ;

__attribute__((used)) static void force_redraw(HWND hwnd)
{
    if (!winetest_interactive)
        return;

    RedrawWindow(hwnd, ((void*)0), 0, RDW_UPDATENOW);
    Sleep(1000);
}
