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
typedef  int /*<<< orphan*/  ulArg ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_BAD_OPTION_LENGTH ; 
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_OPTION_ERROR_MASK ; 
 int /*<<< orphan*/  INTERNET_OPTION_POLICY ; 
 int /*<<< orphan*/  INTERNET_OPTION_REFRESH ; 
 int /*<<< orphan*/  INTERNET_OPTION_SETTINGS_CHANGED ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    HINTERNET ses, con, req;
    ULONG ulArg;
    DWORD size;
    BOOL ret;

    ses = FUNC4(NULL, INTERNET_OPEN_TYPE_DIRECT, NULL, NULL, 0);
    FUNC9(ses != 0, "InternetOpen failed: 0x%08x\n", FUNC0());
    con = FUNC3(ses, "www.winehq.org", 80, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    FUNC9(con != 0, "InternetConnect failed: 0x%08x\n", FUNC0());
    req = FUNC1(con, "GET", "/", NULL, NULL, NULL, 0, 0);
    FUNC9(req != 0, "HttpOpenRequest failed: 0x%08x\n", FUNC0());

    /* INTERNET_OPTION_POLICY tests */
    FUNC8(0xdeadbeef);
    ret = FUNC7(ses, INTERNET_OPTION_POLICY, NULL, 0);
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError should've "
            "given ERROR_INVALID_PARAMETER, gave: 0x%08x\n", FUNC0());

    FUNC8(0xdeadbeef);
    ret = FUNC5(ses, INTERNET_OPTION_POLICY, NULL, 0);
    FUNC9(ret == FALSE, "InternetQueryOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError should've "
            "given ERROR_INVALID_PARAMETER, gave: 0x%08x\n", FUNC0());

    /* INTERNET_OPTION_ERROR_MASK tests */
    FUNC8(0xdeadbeef);
    size = sizeof(ulArg);
    ret = FUNC5(NULL, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, &size);
    FUNC9(ret == FALSE, "InternetQueryOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %x\n", FUNC0());

    FUNC8(0xdeadbeef);
    ulArg = 11;
    ret = FUNC6(NULL, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %x\n", FUNC0());

    FUNC8(0xdeadbeef);
    ulArg = 11;
    ret = FUNC6(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, 20);
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %d\n", FUNC0());

    ulArg = 11;
    ret = FUNC6(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    FUNC9(ret == TRUE, "InternetSetOption should've succeeded\n");

    FUNC8(0xdeadbeef);
    ulArg = 4;
    ret = FUNC6(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError() = %x\n", FUNC0());

    FUNC8(0xdeadbeef);
    ulArg = 16;
    ret = FUNC6(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError() = %x\n", FUNC0());

    ret = FUNC6(req, INTERNET_OPTION_SETTINGS_CHANGED, NULL, 0);
    FUNC9(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = FUNC6(con, INTERNET_OPTION_SETTINGS_CHANGED, NULL, 0);
    FUNC9(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = FUNC6(ses, INTERNET_OPTION_SETTINGS_CHANGED, NULL, 0);
    FUNC9(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = FUNC6(ses, INTERNET_OPTION_REFRESH, NULL, 0);
    FUNC9(ret == TRUE, "InternetSetOption should've succeeded\n");

    FUNC8(0xdeadbeef);
    ret = FUNC6(req, INTERNET_OPTION_REFRESH, NULL, 0);
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %u\n", FUNC0());

    FUNC8(0xdeadbeef);
    ret = FUNC6(con, INTERNET_OPTION_REFRESH, NULL, 0);
    FUNC9(ret == FALSE, "InternetSetOption should've failed\n");
    FUNC9(FUNC0() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %u\n", FUNC0());

    ret = FUNC2(req);
    FUNC9(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", FUNC0());
    ret = FUNC2(con);
    FUNC9(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", FUNC0());
    ret = FUNC2(ses);
    FUNC9(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", FUNC0());
}