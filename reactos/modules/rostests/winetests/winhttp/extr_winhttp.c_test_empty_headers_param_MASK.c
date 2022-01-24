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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ; 
 scalar_t__ ERROR_WINHTTP_TIMEOUT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  test_useragent ; 
 int /*<<< orphan*/  test_winehq ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR empty[]  = {0};
    HINTERNET ses, con, req;
    DWORD err;
    BOOL ret;

    ses = FUNC3(test_useragent, 0, NULL, NULL, 0);
    FUNC6(ses != NULL, "failed to open session %u\n", FUNC0());

    con = FUNC2(ses, test_winehq, 80, 0);
    FUNC6(con != NULL, "failed to open a connection %u\n", FUNC0());

    req = FUNC4(con, NULL, NULL, NULL, NULL, NULL, 0);
    FUNC6(req != NULL, "failed to open a request %u\n", FUNC0());

    ret = FUNC5(req, empty, 0, NULL, 0, 0, 0);
    err = FUNC0();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        FUNC7("connection failed, skipping\n");
        goto done;
    }
    FUNC6(ret, "failed to send request %u\n", FUNC0());

 done:
    FUNC1(req);
    FUNC1(con);
    FUNC1(ses);
}