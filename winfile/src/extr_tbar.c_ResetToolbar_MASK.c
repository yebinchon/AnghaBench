#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT ;
struct TYPE_4__ {scalar_t__ idM; } ;
struct TYPE_3__ {scalar_t__ fsStyle; scalar_t__ idCommand; } ;
typedef  scalar_t__ LPTBBUTTON ;
typedef  int LPARAM ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_DISABLED ; 
 int MF_GRAYED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ TBAR_ALL_BUTTONS ; 
 scalar_t__ TBAR_BUTTON_COUNT ; 
 scalar_t__ TBSTYLE_SEP ; 
 int /*<<< orphan*/  TB_ADDBUTTONS ; 
 int /*<<< orphan*/  TB_BUTTONCOUNT ; 
 int /*<<< orphan*/  TB_CHECKBUTTON ; 
 int /*<<< orphan*/  TB_DELETEBUTTON ; 
 int /*<<< orphan*/  TB_ENABLEBUTTON ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int /*<<< orphan*/  hwndFrame ; 
 int /*<<< orphan*/  hwndMDIClient ; 
 int /*<<< orphan*/  hwndToolbar ; 
 TYPE_2__* sAllButtons ; 
 TYPE_1__* tbButtons ; 

VOID
FUNC6(void)
{
   INT nItem;
   INT i, idCommand;
   HMENU hMenu;
   UINT state;

   HWND hwndActive;

   // Remove from back to front as a speed optimization

   for (nItem=(INT)FUNC5(hwndToolbar, TB_BUTTONCOUNT, 0, 0L)-1;
      nItem>=0; --nItem)

      FUNC5(hwndToolbar, TB_DELETEBUTTON, nItem, 0L);

   // Add the default list of buttons

   FUNC5(hwndToolbar, TB_ADDBUTTONS, TBAR_BUTTON_COUNT,
      (LPARAM)(LPTBBUTTON)tbButtons);

   // Add the extensions back in

   FUNC0(TRUE);

   // Set the states correctly

   hMenu = FUNC2(hwndFrame);

   hwndActive = (HWND) FUNC5(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);

   if (hwndActive && FUNC4(0xffff, hMenu, hwndActive)) {
      for (i=0; i<TBAR_BUTTON_COUNT; ++i) {
         if (tbButtons[i].fsStyle == TBSTYLE_SEP)
            continue;

         idCommand = tbButtons[i].idCommand;
         state = FUNC3(hMenu, idCommand, MF_BYCOMMAND);

         FUNC5(hwndToolbar, TB_CHECKBUTTON, idCommand, state&MF_CHECKED);
         FUNC5(hwndToolbar, TB_ENABLEBUTTON, idCommand,
            !(state&(MF_DISABLED|MF_GRAYED)));
      }

      for (i=0; i<TBAR_ALL_BUTTONS; ++i) {
         idCommand = sAllButtons[i].idM;
         state = FUNC3(hMenu, idCommand, MF_BYCOMMAND);
         FUNC5(hwndToolbar, TB_CHECKBUTTON, idCommand, state&MF_CHECKED);
         FUNC5(hwndToolbar, TB_ENABLEBUTTON, idCommand,
            !(state&(MF_DISABLED|MF_GRAYED)));
      }
   } else {
      FUNC1();
   }
}