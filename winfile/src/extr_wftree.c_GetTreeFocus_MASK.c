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
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_LASTFOCUS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ bDriveBar ; 
 scalar_t__ hwndDriveBar ; 

HWND
FUNC3(HWND hwndTree)
{
   HWND hwnd, hwndLast = NULL;

   if (bDriveBar && FUNC0() == hwndDriveBar)
      return hwndDriveBar;

   hwndLast = hwnd = (HWND)FUNC2(hwndTree, GWL_LASTFOCUS);

   while (hwnd && hwnd != hwndTree) {
      hwndLast = hwnd;
      hwnd = FUNC1(hwnd);
   }

   return hwndLast;
}