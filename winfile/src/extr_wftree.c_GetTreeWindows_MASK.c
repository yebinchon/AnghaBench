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
typedef  int /*<<< orphan*/ * PHWND ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCW_DIR ; 
 int /*<<< orphan*/  IDCW_TREECONTROL ; 

VOID
FUNC1( HWND hwnd,
   PHWND phwndTree,
   PHWND phwndDir)
{
   if (phwndTree) {
      *phwndTree = FUNC0(hwnd, IDCW_TREECONTROL);
   }
   if (phwndDir) {
      *phwndDir  = FUNC0(hwnd, IDCW_DIR);
   }
}