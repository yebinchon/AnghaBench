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
typedef  scalar_t__ HWINSTA ;
typedef  int /*<<< orphan*/ * HDESK ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DESKTOP_ALL_ACCESS ; 
 scalar_t__ ERROR_INVALID_FUNCTION ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WINSTA_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

void FUNC11()
{
    HDESK hDeskInput ,hDeskInput2;
    HDESK hDeskInitial;
    BOOL ret;
    HWINSTA hwinsta = NULL, hwinstaInitial;
    DWORD err;

    hDeskInput = FUNC7(0, FALSE, DESKTOP_ALL_ACCESS);
    FUNC10(hDeskInput != NULL, "OpenInputDesktop failed\n");
    hDeskInitial = FUNC6( FUNC3() );
    FUNC10(hDeskInitial != NULL, "GetThreadDesktop failed\n");
    FUNC10(hDeskInput != hDeskInitial, "OpenInputDesktop returned thread desktop\n");

    hDeskInput2 = FUNC7(0, FALSE, DESKTOP_ALL_ACCESS);
    FUNC10(hDeskInput2 != NULL, "Second call to OpenInputDesktop failed\n");
    FUNC10(hDeskInput2 != hDeskInput, "Second call to OpenInputDesktop returned same handle\n");

    FUNC10(FUNC0(hDeskInput2) != 0, "CloseDesktop failed\n");

    ret = FUNC9(hDeskInput);
    FUNC10(ret == TRUE, "SetThreadDesktop for input desktop failed\n");

    ret = FUNC9(hDeskInitial);
    FUNC10(ret == TRUE, "SetThreadDesktop for initial desktop failed\n");

    FUNC10(FUNC0(hDeskInput) != 0, "CloseDesktop failed\n");

    /* Try calling OpenInputDesktop after switching to a new winsta */
    hwinstaInitial = FUNC5();
    FUNC10(hwinstaInitial != 0, "GetProcessWindowStation failed\n");

    hwinsta = FUNC2(L"TestWinsta", 0, WINSTA_ALL_ACCESS, NULL);
    FUNC10(hwinsta != 0, "CreateWindowStationW failed\n");

    ret = FUNC8(hwinsta);
    FUNC10(ret != FALSE, "SetProcessWindowStation failed\n");

    hDeskInput = FUNC7(0, FALSE, DESKTOP_ALL_ACCESS);
    FUNC10(hDeskInput == 0, "OpenInputDesktop should fail\n");

    err = FUNC4();
    FUNC10(err == ERROR_INVALID_FUNCTION, "Got last error: %lu\n", err);

    ret = FUNC8(hwinstaInitial);
    FUNC10(ret != FALSE, "SetProcessWindowStation failed\n");

    ret = FUNC1(hwinsta);
    FUNC10(ret != FALSE, "CloseWindowStation failed\n");

}