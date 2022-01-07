
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;
typedef int HWND ;


 int CheckSize (int ,scalar_t__,scalar_t__,char const*,int) ;
 int MAKELPARAM (scalar_t__,scalar_t__) ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int TCM_SETITEMSIZE ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void TabCheckSetSize(HWND hwnd, INT set_width, INT set_height, INT exp_width,
    INT exp_height, const char *msg, int line)
{
    SendMessageA(hwnd, TCM_SETITEMSIZE, 0,
            MAKELPARAM((set_width >= 0) ? set_width : 0, (set_height >= 0) ? set_height : 0));
    if (winetest_interactive) RedrawWindow (hwnd, ((void*)0), 0, RDW_UPDATENOW);
    CheckSize(hwnd, exp_width, exp_height, msg, line);
}
