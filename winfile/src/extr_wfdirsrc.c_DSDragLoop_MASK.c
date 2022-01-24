#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ hwndSink; scalar_t__ dwControlData; int /*<<< orphan*/  ptDrop; } ;
struct TYPE_5__ {int dwAttrs; } ;
typedef  TYPE_1__* LPXDTA ;
typedef  scalar_t__ LPTSTR ;
typedef  TYPE_2__* LPDROPSTRUCT ;
typedef  long LPARAM ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ATTR_DIR ; 
 int FALSE ; 
 int /*<<< orphan*/  FS_GETDRIVE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  VK_CONTROL ; 
 int /*<<< orphan*/  VK_MENU ; 
 int /*<<< orphan*/  VK_SHIFT ; 
 int /*<<< orphan*/  hAppInstance ; 
 scalar_t__ hwndGlobalSink ; 
 int iCurDrag ; 

VOID
FUNC13(HWND hwndLB, WPARAM wParam, LPDROPSTRUCT lpds)
{
   BOOL bShowBitmap;
   LPXDTA lpxdta;
   HWND hwndMDIChildSink, hwndDir;
   BOOL bForceMoveCur = FALSE;

   //
   // bShowBitmap is used to turn the source bitmaps on or off to distinguish
   // between a move and a copy or to indicate that a drop can
   // occur (exec and app)
   //
   // hack: keep around for drop files!
   //
   hwndGlobalSink = lpds->hwndSink;

   //
   // default to copy
   //
   bShowBitmap = TRUE;

   //
   // can't drop here
   //
   if (!wParam)
      goto DragLoopCont;

   //
   // Is the user holding down the CTRL key (which forces a copy)?
   //
   if (FUNC1(VK_CONTROL) < 0) {
       bShowBitmap = TRUE;
       goto DragLoopCont;
   }

   //
   // Is the user holding down the ALT or SHIFT key (which forces a move)?
   //
   if (FUNC1(VK_MENU)<0 || FUNC1(VK_SHIFT)<0) {
      bShowBitmap = FALSE;
      goto DragLoopCont;
   }

   hwndMDIChildSink = FUNC2(lpds->hwndSink);

   //
   // Are we over the source listbox? (sink and source the same)
   //
   if (lpds->hwndSink == hwndLB) {

      //
      // Are we over a valid listbox entry?
      //
      if (lpds->dwControlData == (DWORD)-1) {

         //
         // Now force move cursor
         //
         bForceMoveCur = TRUE;
         goto DragLoopCont;

      } else {

         //
         // are we over a directory entry?
         //
         FUNC10(hwndLB, LB_GETTEXT, (WPARAM)(lpds->dwControlData), (LPARAM)&lpxdta);

         if (!(lpxdta && lpxdta->dwAttrs & ATTR_DIR)) {

            //
            // Now force move cursor
            //
            bForceMoveCur = TRUE;

            goto DragLoopCont;
         }
      }
   }

   //
   // Now we need to see if we are over an Executable file.  If so, we
   // need to force the Bitmaps to draw.
   //

   //
   // Are we over a directory window?
   //
   if (hwndMDIChildSink)
      hwndDir = FUNC5(hwndMDIChildSink);
   else
      hwndDir = NULL;

   if (hwndDir && (hwndDir == FUNC4(lpds->hwndSink))) {

      //
      // Are we over an occupied part of the list box?
      //
      if (lpds->dwControlData != (DWORD)-1) {

         //
         // Are we over an Executable?
         //
         FUNC10(lpds->hwndSink, LB_GETTEXT, (WORD)(lpds->dwControlData), (LPARAM)(LPTSTR)&lpxdta);

         if (lpxdta && FUNC6(FUNC9(lpxdta))) {
            goto DragLoopCont;
         }
      }
   }

   //
   // Are we dropping into the same drive (check the source and dest drives)
   //
   bShowBitmap = ((INT)FUNC10(FUNC4(hwndLB), FS_GETDRIVE, 0, 0L) !=
                  FUNC0(lpds->hwndSink, lpds->ptDrop));

DragLoopCont:

   FUNC12(hwndLB, bShowBitmap);

   //
   // hack, set the cursor to match the move/copy state
   //
   if (wParam) {
      if (bForceMoveCur) {
         FUNC11(FUNC7(hAppInstance, (LPTSTR) FUNC8(iCurDrag & ~1)));
      } else {
         FUNC11(FUNC3());
      }
   }
}