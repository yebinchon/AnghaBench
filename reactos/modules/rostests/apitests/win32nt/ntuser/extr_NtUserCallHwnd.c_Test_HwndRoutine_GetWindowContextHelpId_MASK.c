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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID ; 
 int /*<<< orphan*/  _HWND_ROUTINE_GETWNDCONTEXTHLPID ; 

void
FUNC3 (HWND hWnd)
{
    FUNC2(FUNC1(hWnd, 0xbadb00b, _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID) == TRUE);
    FUNC2(FUNC0(hWnd, _HWND_ROUTINE_GETWNDCONTEXTHLPID) == 0xbadb00b);

}