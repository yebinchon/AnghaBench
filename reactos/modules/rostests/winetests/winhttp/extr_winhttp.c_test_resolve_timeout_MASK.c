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
typedef  int /*<<< orphan*/  timeout ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ; 
 scalar_t__ ERROR_WINHTTP_NAME_NOT_RESOLVED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WINHTTP_OPTION_RESOLVE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  test_useragent ; 
 char const* test_winehq ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR nxdomain[] =
        {'n','x','d','o','m','a','i','n','.','w','i','n','e','h','q','.','o','r','g',0};
    HINTERNET ses, con, req;
    DWORD timeout;
    BOOL ret;

    if (! FUNC9())
    {
        ses = FUNC4(test_useragent, 0, NULL, NULL, 0);
        FUNC8(ses != NULL, "failed to open session %u\n", FUNC0());

        timeout = 10000;
        ret = FUNC7(ses, WINHTTP_OPTION_RESOLVE_TIMEOUT, &timeout, sizeof(timeout));
        FUNC8(ret, "failed to set resolve timeout %u\n", FUNC0());

        con = FUNC3(ses, nxdomain, 0, 0);
        FUNC8(con != NULL, "failed to open a connection %u\n", FUNC0());

        req = FUNC5(con, NULL, NULL, NULL, NULL, NULL, 0);
        FUNC8(req != NULL, "failed to open a request %u\n", FUNC0());

        FUNC1(0xdeadbeef);
        ret = FUNC6(req, NULL, 0, NULL, 0, 0, 0);
        if (ret)
        {
            FUNC10("nxdomain returned success. Broken ISP redirects?\n");
            goto done;
        }
        FUNC8(FUNC0() == ERROR_WINHTTP_NAME_NOT_RESOLVED,
           "expected ERROR_WINHTTP_NAME_NOT_RESOLVED got %u\n", FUNC0());

        FUNC2(req);
        FUNC2(con);
        FUNC2(ses);
    }
    else
       FUNC10("Skipping host resolution tests, host resolution preformed by proxy\n");

    ses = FUNC4(test_useragent, 0, NULL, NULL, 0);
    FUNC8(ses != NULL, "failed to open session %u\n", FUNC0());

    timeout = 10000;
    ret = FUNC7(ses, WINHTTP_OPTION_RESOLVE_TIMEOUT, &timeout, sizeof(timeout));
    FUNC8(ret, "failed to set resolve timeout %u\n", FUNC0());

    con = FUNC3(ses, test_winehq, 0, 0);
    FUNC8(con != NULL, "failed to open a connection %u\n", FUNC0());

    req = FUNC5(con, NULL, NULL, NULL, NULL, NULL, 0);
    FUNC8(req != NULL, "failed to open a request %u\n", FUNC0());

    ret = FUNC6(req, NULL, 0, NULL, 0, 0, 0);
    if (!ret && FUNC0() == ERROR_WINHTTP_CANNOT_CONNECT)
    {
        FUNC10("connection failed, skipping\n");
        goto done;
    }
    FUNC8(ret, "failed to send request\n");

 done:
    FUNC2(req);
    FUNC2(con);
    FUNC2(ses);
}