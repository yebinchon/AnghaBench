
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 int GWL_LASTFOCUS ;
 scalar_t__ GetFocus () ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 scalar_t__ bDriveBar ;
 scalar_t__ hwndDriveBar ;

HWND
GetTreeFocus(HWND hwndTree)
{
   HWND hwnd, hwndLast = ((void*)0);

   if (bDriveBar && GetFocus() == hwndDriveBar)
      return hwndDriveBar;

   hwndLast = hwnd = (HWND)GetWindowLongPtr(hwndTree, GWL_LASTFOCUS);

   while (hwnd && hwnd != hwndTree) {
      hwndLast = hwnd;
      hwnd = GetParent(hwnd);
   }

   return hwndLast;
}
