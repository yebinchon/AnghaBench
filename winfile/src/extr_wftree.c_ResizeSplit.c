
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; } ;
typedef TYPE_1__ RECT ;
typedef int PVOID ;
typedef scalar_t__ LPTSTR ;
typedef long LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef int BOOL ;


 scalar_t__ CreateWindowEx (long,int ,int *,int,int ,int ,int ,int ,scalar_t__,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int EnableCheckTBButtons (scalar_t__) ;
 int FALSE ;
 int GWL_READLEVEL ;
 int GWL_SPLIT ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 scalar_t__ GetTreeIcon (scalar_t__) ;
 int GetTreeWindows (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 int ICON_SMALL ;
 scalar_t__ IDCW_DIR ;
 int IDCW_LISTBOX ;
 scalar_t__ IDCW_TREECONTROL ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int LB_GETTEXT ;
 int MAKEWORD (int ,int ) ;
 int SendMessage (scalar_t__,int ,int ,long) ;
 int SetFocus (int ) ;
 int SetWindowLongPtr (scalar_t__,int ,int) ;
 int TC_SETDRIVE ;
 int TRUE ;
 int UpdateStatus (scalar_t__) ;
 int WM_SETICON ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_VISIBLE ;
 int dxDriveBitmap ;
 int hAppInstance ;
 int hwndDriveBar ;
 int szDirClass ;
 int szTreeControlClass ;

BOOL
ResizeSplit(HWND hwnd, INT dxSplit)
{
   RECT rc;
   HWND hwndTree, hwndDir, hwndLB;

   GetTreeWindows(hwnd, &hwndTree, &hwndDir);

   if (hwndTree && GetWindowLongPtr(hwndTree, GWL_READLEVEL))
      return FALSE;

   GetClientRect(hwnd, &rc);

   if (dxSplit > dxDriveBitmap * 2) {

      if (!hwndTree) {

         hwndTree = CreateWindowEx(0L,
                                   szTreeControlClass,
                                   ((void*)0),
                                   WS_CHILD | WS_VISIBLE | WS_CLIPCHILDREN,
                                   0, 0, 0, 0,
                                   hwnd,
                                   (HMENU)IDCW_TREECONTROL,
                                   hAppInstance, ((void*)0));

         if (!hwndTree)
            return FALSE;






         if (hwndDir)
            SendMessage(hwndTree, TC_SETDRIVE, MAKEWORD(FALSE, 0), 0L);
      }
   } else {




      if (hwndTree) {





         if (hwndDir) {
            hwndLB = GetDlgItem (hwndDir,IDCW_LISTBOX);
            if (hwndLB) {
               PVOID pv;
               SendMessage (hwndLB,LB_GETTEXT,0,(LPARAM)(LPTSTR) &pv);
               if (!pv)
                  SetFocus(hwndDriveBar);
            }
         }
         DestroyWindow(hwndTree);
      }
      dxSplit = 0;
   }

   if ((rc.right - dxSplit) > dxDriveBitmap * 2) {

      if (!hwndDir) {
         hwndDir = CreateWindowEx(0L,
                                  szDirClass,
                                  ((void*)0),
                                  WS_CHILD | WS_VISIBLE | WS_CLIPCHILDREN,
                                  0, 0, 0, 0,
                                  hwnd,
                                  (HMENU)IDCW_DIR,
                                  hAppInstance,
                                  ((void*)0));
         if (!hwndDir)
            return FALSE;

      } else {




         InvalidateRect(hwndDir, ((void*)0), TRUE);
      }
   } else {




      if (hwndDir) {
         DestroyWindow(hwndDir);
      }
      dxSplit = rc.right;
   }


   SetWindowLongPtr(hwnd, GWL_SPLIT, dxSplit);

   SendMessage(hwnd, WM_SETICON, ICON_SMALL, (LPARAM)GetTreeIcon(hwnd));

   UpdateStatus(hwnd);
   EnableCheckTBButtons(hwnd);

   return TRUE;
}
