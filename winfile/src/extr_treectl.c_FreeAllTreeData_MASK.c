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
typedef  scalar_t__ PDNODE ;
typedef  long LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_XTREEMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_RESETCONTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID
FUNC4(HWND hwndLB)
{
  INT nIndex;
  PDNODE pNode;

  // Free up the old tree (if any)

  nIndex = (INT)FUNC2(hwndLB, LB_GETCOUNT, 0, 0L) - 1;
  while (nIndex >= 0)
  {
      FUNC2(hwndLB, LB_GETTEXT, nIndex, (LPARAM)&pNode);
      FUNC1((HANDLE)pNode);
      nIndex--;
  }

  FUNC2(hwndLB, LB_RESETCONTENT, 0, 0L);
  FUNC3(FUNC0(hwndLB), GWL_XTREEMAX, 0);
}