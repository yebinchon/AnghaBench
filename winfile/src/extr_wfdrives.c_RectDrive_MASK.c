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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  DRIVEIND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_WINDOWTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dyBorder ; 
 int /*<<< orphan*/  hwndDriveBar ; 

VOID
FUNC10(DRIVEIND driveInd, BOOL bDraw)
{
   RECT rc, rcDrive;
   HBRUSH hBrush;
   HDC hdc;

   FUNC4(driveInd, &rc);
   rcDrive = rc;
   FUNC6(&rc, -dyBorder, -dyBorder);

   if (bDraw) {

      hdc = FUNC3(hwndDriveBar);

      if ((hBrush = FUNC0(FUNC5(COLOR_WINDOWTEXT)))) {
         FUNC2(hdc, &rc, hBrush);
         FUNC1(hBrush);
      }

      FUNC8(hwndDriveBar, hdc);

   } else {
      FUNC7(hwndDriveBar, &rcDrive, TRUE);
      FUNC9(hwndDriveBar);
   }
}