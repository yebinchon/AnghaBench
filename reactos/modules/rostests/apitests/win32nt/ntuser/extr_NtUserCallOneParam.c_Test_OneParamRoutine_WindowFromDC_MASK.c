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
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void) /* 0x1f */
{
    HDC hDC = FUNC0(NULL);
    HWND hWnd;

    hWnd = (HWND)FUNC3((DWORD)hDC, 0x1f);
    FUNC4(hWnd != 0);
    FUNC4(FUNC2(hWnd));
    FUNC4(hWnd == FUNC1());

}