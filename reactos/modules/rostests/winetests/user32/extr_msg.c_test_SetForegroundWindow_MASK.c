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
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SetForegroundWindowSeq ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  WmEmptySeq ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HWND hwnd;

    hwnd = FUNC0(0, "TestWindowClass", "Test SetForegroundWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC5 (hwnd != 0, "Failed to create overlapped window\n");
    FUNC3( hwnd );
    FUNC4();

    FUNC7("SetForegroundWindow( 0 )\n");
    FUNC3( 0 );
    FUNC6(WmEmptySeq, "SetForegroundWindow( 0 ) away from foreground top level window", FALSE);
    FUNC7("SetForegroundWindow( GetDesktopWindow() )\n");
    FUNC3( FUNC2() );
    FUNC6(SetForegroundWindowSeq, "SetForegroundWindow( desktop ) away from "
                                        "foreground top level window", FALSE);
    FUNC7("done\n");

    FUNC1(hwnd);
}