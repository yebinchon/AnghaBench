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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int DRIVEBAR_FLAG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZENORMAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TOOLBAR_FLAG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SIZE ; 
 scalar_t__ bDriveBar ; 
 scalar_t__ bToolbar ; 
 int /*<<< orphan*/  hwndDriveBar ; 
 int /*<<< orphan*/  hwndFrame ; 
 int /*<<< orphan*/  hwndMDIClient ; 
 int /*<<< orphan*/  hwndToolbar ; 

VOID
FUNC6(HWND hwndActive,INT iFlags)
{
   RECT rc;

   FUNC0(hwndFrame, &rc);
   FUNC3(hwndFrame, WM_SIZE, SIZENORMAL, FUNC2(rc.right, rc.bottom));
   FUNC4(hwndActive);

   FUNC1(hwndMDIClient, NULL, FALSE);

   if (bDriveBar && (iFlags & DRIVEBAR_FLAG))
      FUNC1(hwndDriveBar, NULL, TRUE);
   if (bToolbar && (iFlags & TOOLBAR_FLAG))
      FUNC1(hwndToolbar, NULL, TRUE);

   FUNC5(hwndFrame);
}