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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DoubleSetCaptureSeq ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    HWND hwnd;

    hwnd = FUNC0(0, "TestWindowClass", "Test DoubleSetCapture",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC7 (hwnd != 0, "Failed to create overlapped window\n");

    FUNC3( hwnd, SW_SHOW );
    FUNC4( hwnd );
    FUNC5();
    FUNC6();

    FUNC2( hwnd );
    FUNC2( hwnd );
    FUNC8(DoubleSetCaptureSeq, "SetCapture( hwnd ) twice", FALSE);

    FUNC1(hwnd);
}