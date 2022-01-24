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
typedef  int /*<<< orphan*/ * HWINSTA ;
typedef  int /*<<< orphan*/ * HDESK ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  DESKTOP_ALL_ACCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  STATUS_DLL_INIT_FAILED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WINSTA_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC8(char *argv0)
{
    HWINSTA hwinsta = NULL, hwinstaInitial;
    HDESK hdesktop = NULL;
    BOOL ret;
    DWORD error;

    hwinstaInitial = FUNC4();

    /* Use the default (interactive) window station */
    FUNC7(0, argv0, NULL, 0);
    FUNC7(1, argv0, "Default", 0);
    FUNC7(2, argv0, "WinSta0\\", STATUS_DLL_INIT_FAILED);
    FUNC7(3, argv0, "\\Default", STATUS_DLL_INIT_FAILED);
    FUNC7(4, argv0, "WinSta0\\Default", 0);
    FUNC7(5, argv0, "Winlogon", STATUS_DLL_INIT_FAILED);
    FUNC7(6, argv0, "WinSta0/Default", STATUS_DLL_INIT_FAILED);
    FUNC7(7, argv0, "NonExistantDesktop", STATUS_DLL_INIT_FAILED);
    FUNC7(8, argv0, "NonExistantWinsta\\NonExistantDesktop", STATUS_DLL_INIT_FAILED);

    /* Test on an (non-interactive) window station */
    hwinsta = FUNC3(L"TestWinsta", WINSTA_ALL_ACCESS, TRUE, &error);
    FUNC6(hwinsta != NULL && error == NO_ERROR, "CreateWindowStation failed, got 0x%p, 0x%lx\n", hwinsta, error);
    ret = FUNC5(hwinsta);
    FUNC6(ret != FALSE, "SetProcessWindowStation failed\n");
    hdesktop = FUNC2(L"TestDesktop", DESKTOP_ALL_ACCESS, TRUE, &error);
    FUNC6(hdesktop != NULL && error == 0xfeedf00d, "CreateDesktop failed, got 0x%p, 0x%lx\n", hdesktop, error);

    FUNC7(9, argv0, NULL, 0);
    FUNC7(10, argv0, "TestDesktop", STATUS_DLL_INIT_FAILED);
    FUNC7(11, argv0, "TestWinsta\\", STATUS_DLL_INIT_FAILED);
    FUNC7(12, argv0, "\\TestDesktop", STATUS_DLL_INIT_FAILED);
    FUNC7(13, argv0, "TestWinsta\\TestDesktop", 0);
    FUNC7(14, argv0, "NonExistantWinsta\\NonExistantDesktop", STATUS_DLL_INIT_FAILED);

    ret = FUNC5(hwinstaInitial);
    FUNC6(ret != FALSE, "SetProcessWindowStation failed\n");

    ret = FUNC0(hdesktop);
    FUNC6(ret != FALSE, "CloseDesktop failed\n");

    ret = FUNC1(hwinsta);
    FUNC6(ret != FALSE, "CloseWindowStation failed\n");

#if 0
    /* Test on an non-interactive Service-0xXXXX-YYYY$ window station */
    hwinsta = CreateInheritableWinsta(NULL, WINSTA_ALL_ACCESS, TRUE, &error);
    ok(hwinsta != NULL && error == NO_ERROR, "CreateWindowStation failed, got 0x%p, 0x%lx\n", hwinsta, error);
    ret = SetProcessWindowStation(hwinsta);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");
    hdesktop = CreateInheritableDesktop(L"TestDesktop", DESKTOP_ALL_ACCESS, TRUE, &error);
    ok(hdesktop != NULL && error == 0xfeedf00d, "CreateDesktop failed, got 0x%p, 0x%lx\n", hdesktop, error);

    test_CreateProcessWithDesktop(15, argv0, NULL, 0);
    test_CreateProcessWithDesktop(16, "TestDesktop", NULL, 0 /*ERROR_ACCESS_DENIED*/);

    ret = SetProcessWindowStation(hwinstaInitial);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");

    ret = CloseDesktop(hdesktop);
    ok(ret != FALSE, "CloseDesktop failed\n");

    ret = CloseWindowStation(hwinsta);
    ok(ret != FALSE, "CloseWindowStation failed\n");
#endif
}