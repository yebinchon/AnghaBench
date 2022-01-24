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
typedef  int /*<<< orphan*/  HICON ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  hicoDir ; 
 int /*<<< orphan*/  hicoTree ; 
 int /*<<< orphan*/  hicoTreeDir ; 

HICON
FUNC2(HWND hWnd)
{
   HWND hwndTree, hwndDir;

   hwndTree = FUNC1(hWnd);
   hwndDir = FUNC0(hWnd);

   if (hwndTree && hwndDir)
      return hicoTreeDir;
   else if (hwndTree)
      return hicoTree;
   else
      return hicoDir;
}