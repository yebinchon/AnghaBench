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
typedef  scalar_t__ LPXDTALINK ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  EDIRABORT ;

/* Variables and functions */
 int /*<<< orphan*/  CriticalSectionDirRead ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_HDTA ; 
 int /*<<< orphan*/  GWL_HDTAABORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bDirReadAbort ; 
 int /*<<< orphan*/  hEventDirRead ; 

VOID
FUNC5(
   HWND hwnd,
   LPXDTALINK lpStart,
   EDIRABORT eDirAbort)
{
   //
   // This is the only code that issues the abort!
   //
   FUNC0(&CriticalSectionDirRead);

   FUNC1(hwnd);

   FUNC4(hwnd, GWL_HDTA, (LPARAM)lpStart);
   FUNC4(hwnd, GWL_HDTAABORT, eDirAbort);
   bDirReadAbort = TRUE;

   FUNC3(hEventDirRead);

   FUNC2(&CriticalSectionDirRead);
}