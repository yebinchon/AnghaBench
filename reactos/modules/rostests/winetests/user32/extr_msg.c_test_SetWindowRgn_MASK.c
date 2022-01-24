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
typedef  int /*<<< orphan*/  HRGN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  WmSetWindowRgn ; 
 int /*<<< orphan*/  WmSetWindowRgn_clear ; 
 int /*<<< orphan*/  WmSetWindowRgn_no_redraw ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRGN hrgn;
    HWND hwnd = FUNC1(0, "TestWindowClass", "Test overlapped", WS_OVERLAPPEDWINDOW,
                                100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC8( hwnd != 0, "Failed to create overlapped window\n" );

    FUNC4( hwnd, SW_SHOW );
    FUNC5( hwnd );
    FUNC6();
    FUNC7();

    FUNC10("testing SetWindowRgn\n");
    hrgn = FUNC0( 0, 0, 150, 150 );
    FUNC3( hwnd, hrgn, TRUE );
    FUNC9( WmSetWindowRgn, "WmSetWindowRgn", FALSE );

    hrgn = FUNC0( 30, 30, 160, 160 );
    FUNC3( hwnd, hrgn, FALSE );
    FUNC9( WmSetWindowRgn_no_redraw, "WmSetWindowRgn_no_redraw", FALSE );

    hrgn = FUNC0( 0, 0, 180, 180 );
    FUNC3( hwnd, hrgn, TRUE );
    FUNC9( WmSetWindowRgn, "WmSetWindowRgn2", FALSE );

    FUNC3( hwnd, 0, TRUE );
    FUNC9( WmSetWindowRgn_clear, "WmSetWindowRgn_clear", FALSE );

    FUNC2( hwnd );
}