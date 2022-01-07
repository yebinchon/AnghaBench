
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPTSTR ;
typedef size_t INT ;
typedef int HWND ;
typedef int DWORD ;


 int DRIVEID (int ) ;
 int FALSE ;
 scalar_t__ FindFirstChangeNotification (int ,int ,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NotifyDeleteHandle (size_t) ;
 int * adrive ;
 scalar_t__* ahEvents ;
 int * ahwndWindows ;
 size_t nHandles ;

VOID
NotifyAddHandle(INT i, HWND hwnd, LPTSTR lpPath, DWORD fdwFilter)
{
   adrive[i] = DRIVEID(lpPath);

   ahwndWindows[i] = hwnd;

   ahEvents[i] = FindFirstChangeNotification(lpPath,
      FALSE,
      fdwFilter);

   if (nHandles == i)
      nHandles++;

   if (ahEvents[i] == INVALID_HANDLE_VALUE) {




      NotifyDeleteHandle(i);
   }
}
