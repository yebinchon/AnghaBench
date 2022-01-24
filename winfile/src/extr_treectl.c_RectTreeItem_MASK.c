#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_15__ {int nLevels; } ;
struct TYPE_14__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_13__ {scalar_t__ cx; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PDNODE ;
typedef  scalar_t__ LPRECT ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_WINDOW ; 
 int /*<<< orphan*/  COLOR_WINDOWFRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ IDS_DRAG_COPYING ; 
 scalar_t__ IDS_DRAG_MOVING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_2__*,scalar_t__) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETITEMRECT ; 
 int /*<<< orphan*/  LB_GETSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SBT_NOBORDERS ; 
 int /*<<< orphan*/  SB_SETTEXT ; 
 int SST_FORMAT ; 
 int SST_RESOURCE ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ dxFolder ; 
 int dxText ; 
 int /*<<< orphan*/  dyBorder ; 
 int dyBorderx2 ; 
 scalar_t__ fShowSourceBitmaps ; 
 scalar_t__ hwndDragging ; 
 scalar_t__ hwndStatus ; 
 scalar_t__ szNULL ; 

BOOL
FUNC16(HWND hwndLB, INT iItem, BOOL bFocusOn)
{
   INT           len;
   HDC           hdc;
   RECT          rc;
   RECT          rcClip;
   BOOL          bSel;
   WORD          wColor;
   PDNODE         pNode;
   HBRUSH        hBrush;
   TCHAR          szPath[MAXPATHLEN];
   SIZE          size;

   if (iItem == -1) {

EmptyStatusAndReturn:
      FUNC12(hwndStatus, SB_SETTEXT, SBT_NOBORDERS|255,
         (LPARAM)szNULL);
      FUNC15(hwndStatus);
      return FALSE;
   }

   // Are we over ourselves? (i.e. a selected item in the source listbox)

   bSel = (BOOL)FUNC12(hwndLB, LB_GETSEL, iItem, 0L);

   if (bSel && (hwndDragging == hwndLB))
      goto EmptyStatusAndReturn;

   if (FUNC12(hwndLB, LB_GETTEXT, iItem, (LPARAM)&pNode) == LB_ERR)
      goto EmptyStatusAndReturn;

   FUNC12(hwndLB, LB_GETITEMRECT, iItem, (LPARAM)(LPRECT)&rc);

   hdc = FUNC4(hwndLB);

   /*
    *  Save the real extent.
    */
   size.cx = FUNC5(pNode, NULL, szPath, &len);
   size.cx += dyBorder;


   // rc.left always equals 0 regardless if the horizontal scrollbar
   // is scrolled.  Furthermore, the DC of the listbox uses the visible
   // upper-left corner as (0,0) instead of the conceptual one.

   // To fix this problem, we subtract of the offset between the visible
   // left edge and the conceptual one.  This is done by checking the
   // size of the visible window and subtracting this from the right
   // edge, which is correct.

   // moved up
   FUNC3(hwndLB, &rcClip);

   rc.left = pNode->nLevels * dxText * 2 -
      (rc.right - (rcClip.right-rcClip.left));

   rc.right = rc.left + dxFolder + size.cx + 4 * dyBorderx2;

   FUNC9(&rc, &rc, &rcClip);

   if (bFocusOn) {

      FUNC7(pNode, szPath);
      FUNC14(szPath);

      FUNC13(SBT_NOBORDERS|255, SST_FORMAT|SST_RESOURCE,
               (LPCTSTR)(DWORD)(fShowSourceBitmaps ? IDS_DRAG_COPYING : IDS_DRAG_MOVING),
               szPath);
      FUNC15(hwndStatus);

      if (bSel) {
          wColor = COLOR_WINDOW;
          FUNC8(&rc, -dyBorder, -dyBorder);
      } else
          wColor = COLOR_WINDOWFRAME;
      if ((hBrush = FUNC0(FUNC6(wColor)))) {
        FUNC2(hdc, &rc, hBrush);
        FUNC1(hBrush);
      }
   } else {
      FUNC10(hwndLB, &rc, TRUE);
      FUNC15(hwndLB);
   }
   FUNC11(hwndLB, hdc);
   return TRUE;
}