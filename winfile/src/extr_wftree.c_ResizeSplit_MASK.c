#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ LPTSTR ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_READLEVEL ; 
 int /*<<< orphan*/  GWL_SPLIT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 scalar_t__ IDCW_DIR ; 
 int /*<<< orphan*/  IDCW_LISTBOX ; 
 scalar_t__ IDCW_TREECONTROL ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TC_SETDRIVE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  WM_SETICON ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int WS_VISIBLE ; 
 int dxDriveBitmap ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/  hwndDriveBar ; 
 int /*<<< orphan*/  szDirClass ; 
 int /*<<< orphan*/  szTreeControlClass ; 

BOOL
FUNC14(HWND hwnd, INT dxSplit)
{
   RECT rc;
   HWND hwndTree, hwndDir, hwndLB;

   FUNC6(hwnd, &hwndTree, &hwndDir);

   if (hwndTree && FUNC7(hwndTree, GWL_READLEVEL))
      return FALSE;

   FUNC3(hwnd, &rc);

   if (dxSplit > dxDriveBitmap * 2) {

      if (!hwndTree) {        // make new tree window

         hwndTree = FUNC0(0L,
                                   szTreeControlClass,
                                   NULL,
                                   WS_CHILD | WS_VISIBLE | WS_CLIPCHILDREN,
                                   0, 0, 0, 0,
                                   hwnd,
                                   (HMENU)IDCW_TREECONTROL,
                                   hAppInstance, NULL);

         if (!hwndTree)
            return FALSE;

         //
         // only reset this if the dir window already
         // exists, that is we are creating the tree
         // by splitting open a dir window
         //
         if (hwndDir)
            FUNC10(hwndTree, TC_SETDRIVE, FUNC9(FALSE, 0), 0L);
      }
   } else {

      //
      // In this conditional, always set dxSplit=0.
      //
      if (hwndTree) {          // we are closing the tree window

         //
         // If the directory window is empty, then set the focus to the
         // drives window.
         //
         if (hwndDir) {
            hwndLB = FUNC4 (hwndDir,IDCW_LISTBOX);
            if (hwndLB) {
               PVOID pv;
               FUNC10 (hwndLB,LB_GETTEXT,0,(LPARAM)(LPTSTR) &pv);
               if (!pv)
                  FUNC11(hwndDriveBar);
            }
         }
         FUNC1(hwndTree);
      }
      dxSplit = 0;
   }

   if ((rc.right - dxSplit) > dxDriveBitmap * 2) {

      if (!hwndDir) {
         hwndDir = FUNC0(0L,
                                  szDirClass,
                                  NULL,
                                  WS_CHILD | WS_VISIBLE | WS_CLIPCHILDREN,
                                  0, 0, 0, 0,
                                  hwnd,
                                  (HMENU)IDCW_DIR,
                                  hAppInstance,
                                  NULL);
         if (!hwndDir)
            return FALSE;

      } else {

         //
         // Must invalidate: if viewing extreme left, paint residue left.
         //
         FUNC8(hwndDir, NULL, TRUE);
      }
   } else {

      //
      // Again, always set dxSplit
      //
      if (hwndDir) {
         FUNC1(hwndDir);
      }
      dxSplit = rc.right;
   }


   FUNC12(hwnd, GWL_SPLIT, dxSplit);

   FUNC10(hwnd, WM_SETICON, ICON_SMALL, (LPARAM)FUNC5(hwnd));

   FUNC13(hwnd);
   FUNC2(hwnd);

   return TRUE;
}