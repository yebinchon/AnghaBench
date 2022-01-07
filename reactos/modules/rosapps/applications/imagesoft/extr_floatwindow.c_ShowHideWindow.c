
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int BOOL ;


 scalar_t__ IsWindowVisible (int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;

BOOL
ShowHideWindow(HWND hwnd)
{
    if (IsWindowVisible(hwnd))
        return ShowWindow(hwnd, SW_HIDE);
    else
        return ShowWindow(hwnd, SW_SHOW);
}
