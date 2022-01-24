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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/ * adrive ; 
 scalar_t__* ahEvents ; 
 int /*<<< orphan*/ * ahwndWindows ; 
 size_t nHandles ; 

VOID
FUNC3(INT i, HWND hwnd, LPTSTR lpPath, DWORD fdwFilter)
{
   adrive[i] = FUNC0(lpPath);

   ahwndWindows[i] = hwnd;

   ahEvents[i] = FUNC1(lpPath,
      FALSE,
      fdwFilter);

   if (nHandles == i)
      nHandles++;

   if (ahEvents[i] == INVALID_HANDLE_VALUE) {

      //
      // Since this handle is invalid, delete it.
      //
      FUNC2(i);
   }
}