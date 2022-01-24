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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWL_ATTRIBS ; 
 int /*<<< orphan*/  GWL_HDTA ; 
 int /*<<< orphan*/  GWL_IERROR ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ IDS_NOFILES ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ hwndMDIClient ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

LPXDTALINK
FUNC7(
   HWND hwndCur,
   LPWSTR pPath,
   DWORD dwAttribs)
{
   HWND hwndDir;
   HWND hwnd;
   WCHAR szPath[MAXPATHLEN];

   LPXDTALINK lpStart, lpStartCopy;
   INT iError;

   for (hwnd = FUNC2(hwndMDIClient, GW_CHILD);
      hwnd;
      hwnd = FUNC2(hwnd, GW_HWNDNEXT)) {

      if ((hwndDir = FUNC4(hwnd)) && (hwndDir != hwndCur)) {

         FUNC1(hwnd, szPath, FUNC0(szPath));

         if ((dwAttribs == (DWORD)FUNC3(hwnd, GWL_ATTRIBS)) &&
            !FUNC6(pPath, szPath) &&
            (lpStart = (LPXDTALINK)FUNC3(hwndDir, GWL_HDTA))) {

            iError = (INT)FUNC3(hwndDir, GWL_IERROR);
            if (!iError || IDS_NOFILES == iError) {

               lpStartCopy = FUNC5(lpStart);

               return lpStartCopy;
            }
         }
      }
   }

   return NULL;
}