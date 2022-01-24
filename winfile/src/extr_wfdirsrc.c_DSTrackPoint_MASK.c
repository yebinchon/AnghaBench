#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {int dwAttrs; } ;
struct TYPE_10__ {scalar_t__ message; long lParam; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ MSG ;
typedef  TYPE_3__* LPXDTA ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPTSTR ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ATTR_DIR ; 
 int ATTR_PARENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ DOF_DIRECTORY ; 
 scalar_t__ DOF_DOCUMENT ; 
 scalar_t__ DOF_EXECUTABLE ; 
 scalar_t__ DOF_MULTIPLE ; 
 scalar_t__ DO_DROPFILE ; 
 scalar_t__ DO_PRINTFILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FALSE ; 
 int /*<<< orphan*/  FS_GETSELECTION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  LBN_SELCHANGE ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETANCHORINDEX ; 
 int /*<<< orphan*/  LB_GETSEL ; 
 int /*<<< orphan*/  LB_GETSELCOUNT ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_SELITEMRANGE ; 
 int /*<<< orphan*/  LB_SETCARETINDEX ; 
 int /*<<< orphan*/  LB_SETSEL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 long FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  MULTCOPYCURSOR ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__,long) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  SINGLECOPYCURSOR ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int,int) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VK_CONTROL ; 
 int /*<<< orphan*/  VK_SHIFT ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 scalar_t__ WM_CANCELMODE ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 scalar_t__ WM_LBUTTONUP ; 
 scalar_t__ WM_MOUSEMOVE ; 
 scalar_t__ dxClickRect ; 
 scalar_t__ dyClickRect ; 
 int /*<<< orphan*/ * hdlgProgress ; 
 int /*<<< orphan*/ * hwndDragging ; 
 int /*<<< orphan*/  iCurDrag ; 

INT
FUNC28(
   HWND hwnd,
   HWND hwndLB,
   WPARAM wParam,
   LPARAM lParam,
   BOOL bSearch)
{
   UINT      iSel;
   MSG       msg;
   RECT      rc;
   DWORD     dwAnchor;
   DWORD     dwTemp;
   LPWSTR    pch;
   BOOL      bDir;
   BOOL      bSelected;
   BOOL      bSelectOneItem;
   BOOL      bUnselectIfNoDrag;
   LPWSTR    pszFile;
   POINT     pt;

   bSelectOneItem = FALSE;
   bUnselectIfNoDrag = FALSE;

   bSelected = (BOOL)FUNC21(hwndLB, LB_GETSEL, wParam, 0L);

   if (FUNC7(VK_SHIFT) < 0) {

      // What is the state of the Anchor point?
      dwAnchor = FUNC21(hwndLB, LB_GETANCHORINDEX, 0, 0L);
      bSelected = (BOOL)FUNC21(hwndLB, LB_GETSEL, dwAnchor, 0L);

      // If Control is up, turn everything off.

      if (!(FUNC7(VK_CONTROL) < 0))
         FUNC21(hwndLB, LB_SETSEL, FALSE, -1L);

      // Select everything between the Anchor point and the item.
      FUNC21(hwndLB, LB_SELITEMRANGE, bSelected, FUNC13(wParam, dwAnchor));

      // Give the selected item the focus rect.
      FUNC21(hwndLB, LB_SETCARETINDEX, wParam, 0L);

   } else if (FUNC7(VK_CONTROL) < 0) {
      if (bSelected)
         bUnselectIfNoDrag = TRUE;
      else
         FUNC20(hwndLB, wParam, TRUE);

   } else {
      if (bSelected)
         bSelectOneItem = TRUE;
      else {
         // Deselect everything.
         FUNC21(hwndLB, LB_SETSEL, FALSE, -1L);

         // Select the current item.
         FUNC20(hwndLB, wParam, TRUE);
      }
   }

   if (!bSearch)
      FUNC26(FUNC8(hwnd));

   FUNC15(pt, lParam);
   FUNC0(hwndLB, (LPPOINT)&pt);
   FUNC19(hwnd, (LPPOINT)&pt);

   // See if the user moves a certain number of pixels in any direction

   FUNC23(&rc, pt.x - dxClickRect, pt.y - dyClickRect,
      pt.x + dxClickRect, pt.y + dyClickRect);

   FUNC22(hwnd);

   for (;;) {

      if (FUNC5() != hwnd) {
          msg.message = WM_LBUTTONUP;   // don't proceed below
          break;
      }

      if (FUNC16(&msg, NULL, 0, 0, PM_REMOVE)) {
          FUNC1(&msg);

          //
          // WM_CANCELMODE messages will unset the capture, in that
          // case I want to exit this loop

          //
          // Must do explicit check.
          //
      if (msg.message == WM_CANCELMODE || FUNC5() != hwnd) {
              msg.message = WM_LBUTTONUP;   // don't proceed below

              break;
          }

          if (msg.message == WM_LBUTTONUP)
              break;

          FUNC15(pt, msg.lParam);
          if ((msg.message == WM_MOUSEMOVE) && !(FUNC17(&rc, pt)))
              break;
      }
    }
    FUNC18();

    // Did the guy NOT drag anything?
    if (msg.message == WM_LBUTTONUP) {
       if (bSelectOneItem) {
          /* Deselect everything. */
          FUNC21(hwndLB, LB_SETSEL, FALSE, -1L);

          /* Select the current item. */
          FUNC20(hwndLB, wParam, TRUE);
       }

      if (bUnselectIfNoDrag)
         FUNC20(hwndLB, wParam, FALSE);

      // notify the appropriate people

      FUNC21(hwnd, WM_COMMAND,
         FUNC4(0, hwndLB, LBN_SELCHANGE));

      return 1;
   }

   //
   // Enter Danger Mouse's BatCave.
   //
   if (FUNC21(hwndLB, LB_GETSELCOUNT, 0, 0L) == 1) {

      LPXDTA lpxdta;

      //
      // There is only one thing selected.
      //  Figure out which cursor to use.
      //
      // There is only one thing selected.
      //  Figure out which cursor to use.

      if (FUNC21(hwndLB,
                      LB_GETTEXT,
                      wParam,
                      (LPARAM)&lpxdta) == LB_ERR || !lpxdta) {
         return 1;
      }

      pszFile = FUNC14(lpxdta);

      bDir = lpxdta->dwAttrs & ATTR_DIR;

      //
      // avoid dragging the parent dir
      //
      if (lpxdta->dwAttrs & ATTR_PARENT) {
         return 1;
      }

      if (bDir) {
         iSel = DOF_DIRECTORY;
      } else if (FUNC10(pszFile)) {
         iSel = DOF_EXECUTABLE;
      } else if (FUNC9(pszFile)) {
         iSel = DOF_DOCUMENT;
      } else
         iSel = DOF_DOCUMENT;

      iCurDrag = SINGLECOPYCURSOR;
   } else {

      // Multiple files are selected.
      iSel = DOF_MULTIPLE;
      iCurDrag = MULTCOPYCURSOR;
   }


   // Get the list of selected things.
   pch = (LPTSTR)FUNC21(hwnd, FS_GETSELECTION, FALSE, 0L);

   // Wiggle things around.
   hwndDragging = hwndLB;

   dwTemp = FUNC2(FUNC6(), hwnd, (UINT)iSel, (ULONG_PTR)pch, NULL);

   FUNC24();

   if (dwTemp == DO_PRINTFILE) {
      // print these suckers
      hdlgProgress = NULL;
      FUNC27(pch);
   } else if (dwTemp == DO_DROPFILE) {
      // try and drop them on an application
      FUNC3(pch);
   }

   FUNC12((HANDLE)pch);

   if (FUNC11(hwnd))
      FUNC25(hwndLB, TRUE);

   hwndDragging = NULL;

   if (!bSearch && FUNC11(hwnd))
      FUNC26(FUNC8(hwnd));

   return 2;
}