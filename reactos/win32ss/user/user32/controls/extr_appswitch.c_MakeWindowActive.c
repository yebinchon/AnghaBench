
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int BringWindowToTop (int ) ;
 scalar_t__ IsIconic (int ) ;
 int PostMessageW (int ,int ,int ,int ) ;
 int SC_RESTORE ;
 int SetForegroundWindow (int ) ;
 int WM_SYSCOMMAND ;

void MakeWindowActive(HWND hwnd)
{
   if (IsIconic(hwnd))
      PostMessageW(hwnd, WM_SYSCOMMAND, SC_RESTORE, 0);

   BringWindowToTop(hwnd);
   SetForegroundWindow(hwnd);
}
