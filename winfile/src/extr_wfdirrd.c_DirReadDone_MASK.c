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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPXDTALINK ;
typedef  long LPARAM ;
typedef  long INT ;
typedef  scalar_t__ HWND ;
typedef  int EDIRABORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EDIRABORT_READREQUEST ; 
 int EDIRABORT_WINDOWCLOSE ; 
 int /*<<< orphan*/  FILE_NOTIFY_CHANGE_FLAGS ; 
 int /*<<< orphan*/  FS_TESTEMPTY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  GWL_HDTA ; 
 int /*<<< orphan*/  GWL_HDTAABORT ; 
 int /*<<< orphan*/  GWL_IERROR ; 
 int /*<<< orphan*/  GWL_NEXTHWND ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCW_LISTBOX ; 
 int /*<<< orphan*/  LB_DELETESTRING ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qFreeSpace ; 

LPXDTALINK
FUNC11(
   HWND hwndDir,
   LPXDTALINK lpStart,
   INT iError)
{
   HWND hwndLB = FUNC2(hwndDir, IDCW_LISTBOX);
   HWND hwndParent = FUNC4(hwndDir);
   WCHAR szPath[MAXPATHLEN];
   HWND hwndNext;


   EDIRABORT eDirAbort;

   eDirAbort = (EDIRABORT)FUNC5(hwndDir, GWL_HDTAABORT);

   //
   // Last chance check for abort
   //
   if ((eDirAbort & (EDIRABORT_READREQUEST|EDIRABORT_WINDOWCLOSE)) ||
      FUNC5(hwndDir, GWL_HDTA)) {

      //
      // We don't want it
      //
      return NULL;
   }

   FUNC3(hwndParent, szPath, FUNC0(szPath));
   FUNC10(szPath);

   FUNC6(hwndParent,
                   szPath,
                   FILE_NOTIFY_CHANGE_FLAGS);

   FUNC9(hwndDir, GWL_IERROR, iError);
   FUNC9(hwndDir, GWL_HDTA, (LPARAM)lpStart);

   //
   // Remove the "reading" token
   //
   FUNC8(hwndLB, LB_DELETESTRING, 0, 0);

   FUNC1(hwndDir, lpStart);

   FUNC9(hwndDir, GWLP_USERDATA, 0);

   hwndNext = (HWND)FUNC5(hwndDir, GWL_NEXTHWND);
   if (hwndNext)
   {
       FUNC8(hwndDir, FS_TESTEMPTY, 0L, (LPARAM)hwndNext);
   }
   FUNC9(hwndDir, GWL_NEXTHWND, 0L);

   //
   // Refresh display, but don't hit disk
   //
   FUNC7(qFreeSpace);

   return lpStart;
}