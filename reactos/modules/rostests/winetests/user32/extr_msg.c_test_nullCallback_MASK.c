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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NULL ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    HWND hwnd;

    hwnd = FUNC0(0, "TestWindowClass", "Test overlapped", WS_OVERLAPPEDWINDOW,
                           100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC4 (hwnd != 0, "Failed to create overlapped window\n");

    FUNC2(hwnd,WM_NULL,0,0,NULL,0);
    FUNC3();
    FUNC1(hwnd);
}