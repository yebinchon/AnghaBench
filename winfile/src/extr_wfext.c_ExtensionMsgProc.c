
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef long LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int DrawMenuBar (scalar_t__) ;
 int FALSE ;
 long FMFOCUS_DIR ;
 long FMFOCUS_DRIVES ;
 long FMFOCUS_SEARCH ;
 long FMFOCUS_TREE ;
 int FreeExtensions () ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GW_OWNER ;
 long GetDriveInfo (scalar_t__,int,int ) ;
 long GetExtSelection (scalar_t__,int,int ,int,int,int ,int) ;
 scalar_t__ GetTreeFocus (scalar_t__) ;
 int GetTreeWindows (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int InitExtensions () ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int RefreshWindow (scalar_t__,int ,int ) ;
 int SPC_SET_HITDISK (int ) ;
 int SaveRestoreToolbar (int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,int ,long) ;
 int TRUE ;
 int UpdateDriveList () ;
 int UpdateStatus (scalar_t__) ;
 int WM_CANCELMODE ;
 int WM_MDIGETACTIVE ;
 int WM_SETREDRAW ;
 scalar_t__ hwndDriveBar ;
 scalar_t__ hwndFrame ;
 scalar_t__ hwndMDIClient ;
 scalar_t__ hwndSearch ;
 scalar_t__ hwndToolbar ;
 int qFreeSpace ;

LRESULT
ExtensionMsgProc(UINT wMsg, WPARAM wParam, LPARAM lParam)
{
   HWND hwndActive;
   HWND hwndTree, hwndDir, hwndFocus;

   hwndActive = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
   GetTreeWindows(hwndActive, &hwndTree, &hwndDir);

   switch (wMsg) {

   case 128:
      SendMessage(hwndFrame, WM_CANCELMODE, 0, 0L);

      SaveRestoreToolbar(TRUE);
      SendMessage(hwndToolbar, WM_SETREDRAW, FALSE, 0L);

      FreeExtensions();

      InitExtensions();
      SaveRestoreToolbar(FALSE);

      SendMessage(hwndToolbar, WM_SETREDRAW, TRUE, 0L);
      InvalidateRect(hwndToolbar, ((void*)0), TRUE);

      DrawMenuBar(hwndFrame);
      break;

   case 132:




      if (hwndActive == hwndSearch)
         return FMFOCUS_SEARCH;

      hwndFocus = GetTreeFocus(hwndActive);

      if (hwndFocus == hwndTree)
         return FMFOCUS_TREE;
      else if (hwndFocus == hwndDir)
         return FMFOCUS_DIR;
      else if (hwndFocus == hwndDriveBar)
         return FMFOCUS_DRIVES;
      break;

   case 138:
   case 137:




      return GetDriveInfo(hwndActive, wMsg, lParam);
      break;

   case 129:
      UpdateDriveList();

      if (wParam == 0) {
         RefreshWindow(hwndActive, FALSE, TRUE);
      } else {
         HWND hwndT, hwndNext;

         hwndT = GetWindow(hwndMDIClient, GW_CHILD);
         while (hwndT) {
            hwndNext = GetWindow(hwndT, GW_HWNDNEXT);

            if (!GetWindow(hwndT, GW_OWNER)) {

               RefreshWindow(hwndT, FALSE, TRUE);
            }
            hwndT = hwndNext;
         }
      }

      SPC_SET_HITDISK(qFreeSpace);
      UpdateStatus(hwndActive);
      break;

   case 131:
   case 130:




   case 136:
   case 133:
   case 135:
   case 134:




      if (hwndActive != hwndSearch && !hwndDir)
         return 0L;



      return GetExtSelection(hwndActive, (UINT)wParam, lParam,
         hwndActive == hwndSearch, (wMsg & ~1) == 131,
         (BOOL)(wMsg & 1),
         (wMsg == 133 || wMsg == 134));
   }

   return 0;
}
