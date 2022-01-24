#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GWL_SORT ; 
 int /*<<< orphan*/  GWL_TYPE ; 
 int /*<<< orphan*/  GWL_VIEW ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int IDD_NAME ; 
 scalar_t__ IDM_BYDATE ; 
 int IDM_BYNAME ; 
 int IDM_VDETAILS ; 
 int IDM_VNAME ; 
 int IDM_VOTHER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_ENABLEBUTTON ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  VIEW_EVERYTHING 129 
#define  VIEW_NAMEONLY 128 
 scalar_t__ hwndSearch ; 
 int /*<<< orphan*/  hwndToolbar ; 

VOID
FUNC7(HWND hwndActive)
{
   DWORD dwSort;
   BOOL fEnable;
   INT  iButton;

   // If the active window is the search window, clear the selection
   // in the drive list.

   if (hwndActive == hwndSearch) {

      FUNC4(hwndSearch, TRUE);
      FUNC5(hwndSearch);
   }

   // Check or uncheck the sort-by and view-details buttons based
   // on the settings for the active window.

   switch (FUNC1(hwndActive, GWL_VIEW) & VIEW_EVERYTHING) {
   case VIEW_NAMEONLY:
      FUNC0(IDM_VNAME);
      break;

   case VIEW_EVERYTHING:
      FUNC0(IDM_VDETAILS);
      break;

   default:
      FUNC0(IDM_VOTHER);
      break;
   }

   // Now do the sort-by buttons.  While we're at it, disable them all
   // if the active window is a search window or lacks a directory pane,
   // else enable them all.

   dwSort = FUNC1(hwndActive, GWL_SORT) - IDD_NAME + IDM_BYNAME;

   fEnable = ((int)FUNC1(hwndActive, GWL_TYPE) >= 0 &&
      FUNC2(hwndActive));

   FUNC0(dwSort);
   for (iButton=IDM_BYNAME; iButton<=IDM_BYDATE; ++iButton) {
      FUNC3(hwndToolbar, TB_ENABLEBUTTON, iButton, fEnable);
   }

   FUNC6(hwndToolbar);
}