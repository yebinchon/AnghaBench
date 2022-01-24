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
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVEBAR_FLAG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GWL_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 scalar_t__ cDrives ; 
 int /*<<< orphan*/  hwndMDIClient ; 
 scalar_t__* rgiDrive ; 

VOID
FUNC5(HWND hwndActive)
{
   INT iCurDrive;
   INT iDriveInd;

   if (hwndActive == NULL)
      hwndActive = (HWND) FUNC4(hwndMDIClient, WM_MDIGETACTIVE,0,0L);

   iCurDrive = (INT)FUNC1(hwndActive, GWL_TYPE);

   if (iCurDrive >= 0) {
      for (iDriveInd=0; iDriveInd<cDrives; iDriveInd++) {
         if (rgiDrive[iDriveInd] == iCurDrive) {

            // UpdateDriveList doesn't call filltoolbardrives.  do now.
            // (change = add iCurDrive parm)

            FUNC0(iCurDrive);
            FUNC3(iDriveInd);

            break;
         }
      }
   }

   //
   // No longer calls updatedrivelist and initdrivebitmaps
   //
   FUNC2(hwndActive,DRIVEBAR_FLAG);
}