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
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int WS_EX_MDICHILD ; 

__attribute__((used)) static BOOL 
FUNC4(HWND hWnd, DWORD ExStyle)
{
    BOOL ret;

    if (ExStyle & WS_EX_MDICHILD)
    {
        ret = FUNC2(FUNC0(), hWnd);
        if (ret)
            ret = (hWnd == (HWND)FUNC3(FUNC1(hWnd), WM_MDIGETACTIVE, 0, 0));
    }
    else
    {
        ret = (FUNC0() == hWnd);
    }

    return ret;
}