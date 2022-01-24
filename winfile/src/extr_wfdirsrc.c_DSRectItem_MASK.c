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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int dwAttrs; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/ * PDOCBUCKET ;
typedef  TYPE_1__* LPXDTA ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPTSTR ;
typedef  scalar_t__ LPRECT ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ATTR_DIR ; 
 int ATTR_PARENT ; 
 int COLOR_WINDOW ; 
 int COLOR_WINDOWFRAME ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ IDS_DRAG_COPYING ; 
 scalar_t__ IDS_DRAG_EXECUTING ; 
 scalar_t__ IDS_DRAG_MOVING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETITEMRECT ; 
 int /*<<< orphan*/  LB_GETSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SBT_NOBORDERS ; 
 int /*<<< orphan*/  SB_SETTEXT ; 
 int SST_FORMAT ; 
 int SST_RESOURCE ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ fShowSourceBitmaps ; 
 scalar_t__ hwndDragging ; 
 scalar_t__ hwndStatus ; 
 scalar_t__ szNULL ; 

BOOL 
FUNC19(
   HWND hwndLB,
   INT iItem,
   BOOL bFocusOn,
   BOOL bSearch)
{
   RECT      rc;
   RECT      rcT;
   HDC       hDC;
   BOOL      bSel;
   INT       nColor;
   HBRUSH    hBrush;
   LPXDTA    lpxdta;
   WCHAR     szTemp[MAXPATHLEN];
   PDOCBUCKET pIsProgram = NULL;
   LPWSTR    pszFile;

   //
   // Are we over an unused part of the listbox?
   //
   if (iItem == -1) {
      if (bSearch || hwndDragging == hwndLB) {
         FUNC14(hwndStatus,
                     SB_SETTEXT,
                     SBT_NOBORDERS|255,
                     (LPARAM)szNULL);

         FUNC18(hwndStatus);

      } else {

         FUNC14(FUNC6(hwndLB),
                     FS_GETDIRECTORY,
                     FUNC0(szTemp),
                     (LPARAM)szTemp);

         FUNC16(szTemp);

         FUNC15(SBT_NOBORDERS|255,
                       SST_RESOURCE|SST_FORMAT,
                       (LPWSTR)(fShowSourceBitmaps ?
                          IDS_DRAG_COPYING :
                          IDS_DRAG_MOVING),
                       szTemp);

         FUNC18(hwndStatus);
      }
      return FALSE;
   }

   //
   // Are we over ourselves? (i.e. a selected item in the source listbox)
   //
   bSel = (BOOL)FUNC14(hwndLB, LB_GETSEL, iItem, 0L);

   if (bSel && (hwndDragging == hwndLB)) {

ClearStatus:

      FUNC14(hwndStatus,
                  SB_SETTEXT,
                  SBT_NOBORDERS|255,
                  (LPARAM)szNULL);

      FUNC18(hwndStatus);
      return FALSE;
   }

   //
   // We only put rectangles around directories and program items.
   //
   if (FUNC14(hwndLB,
                   LB_GETTEXT,
                   iItem,
                   (LPARAM)(LPTSTR)&lpxdta) == LB_ERR || !lpxdta) {
      return FALSE;
   }

   if (!(lpxdta->dwAttrs & ATTR_DIR)  &&
      !(pIsProgram = FUNC11(FUNC12(lpxdta)))) {

      //
      // It's not a directory
      //

      //
      // If it's the same dir window, or we are dropping to a search
      // window, don't show any text!
      //
      if ((hwndDragging == hwndLB) || bSearch) {
         goto ClearStatus;
      }

      //
      // We are in a directory window (not search window)
      // but we aren't over a folder, so just use the current directory.
      //
      FUNC14(FUNC6(hwndLB), FS_GETDIRECTORY, FUNC0(szTemp), (LPARAM)szTemp);
      FUNC16(szTemp);

      FUNC15(SBT_NOBORDERS|255,
                    SST_FORMAT | SST_RESOURCE,
                    (LPWSTR)(fShowSourceBitmaps ?
                        IDS_DRAG_COPYING :
                        IDS_DRAG_MOVING),
                    szTemp);

      FUNC18(hwndStatus);
      return FALSE;
   }

   //
   // At this point, we are over a directory folder,
   // be we could be in a search or directory window.
   //

   //
   // Turn the item's rectangle on or off.
   //
   if (bSearch || !(lpxdta->dwAttrs & ATTR_PARENT)) {

      pszFile = FUNC12(lpxdta);

   } else {

      FUNC14(FUNC6(hwndLB), FS_GETDIRECTORY, FUNC0(szTemp), (LPARAM)szTemp);
      FUNC16(szTemp);  // trim it down
      FUNC17(szTemp);

      pszFile = szTemp;
   }

   //
   // Else bSearch and szTemp contains the file name
   //
   if (bFocusOn) {

      FUNC15(SBT_NOBORDERS|255,
                    SST_FORMAT | SST_RESOURCE,
                    (LPWSTR)(pIsProgram ?
                       IDS_DRAG_EXECUTING :
                       (fShowSourceBitmaps ?
                          IDS_DRAG_COPYING :
                          IDS_DRAG_MOVING)),
                   pszFile);

      FUNC18(hwndStatus);
   }

   FUNC14(hwndLB, LB_GETITEMRECT, iItem, (LPARAM)(LPRECT)&rc);
   FUNC4(hwndLB,&rcT);
   FUNC9(&rc,&rc,&rcT);

   if (bFocusOn) {
      hDC = FUNC5(hwndLB);
      if (bSel) {
         nColor = COLOR_WINDOW;
         FUNC8(&rc, -1, -1);
      } else
         nColor = COLOR_WINDOWFRAME;

      if ((hBrush = FUNC1(FUNC7(nColor)))) {
         FUNC3(hDC, &rc, hBrush);
         FUNC2(hBrush);
      }
      FUNC13(hwndLB, hDC);
   } else {
      FUNC10(hwndLB, &rc, FALSE);
      FUNC18(hwndLB);
   }

   return TRUE;
}