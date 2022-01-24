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
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_CANNOT_CONNECT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTPS_PORT ; 
 int /*<<< orphan*/  INTERNET_FLAG_SECURE ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static BOOL FUNC8(void)
{
    HINTERNET ses, con, req;
    BOOL ret;

    ses = FUNC5("winetest", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, 0);
    FUNC7(ses != NULL, "InternetOpen failed\n");

    con = FUNC4(ses, "test.winehq.org", INTERNET_DEFAULT_HTTPS_PORT,
            NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    FUNC7(con != NULL, "InternetConnect failed\n");

    req = FUNC1(con, "GET", "/tests/hello.html", NULL, NULL, NULL,
            INTERNET_FLAG_SECURE, 0);
    FUNC7(req != NULL, "HttpOpenRequest failed\n");

    ret = FUNC2(req, NULL, 0, NULL, 0);
    FUNC7(ret || FUNC6(FUNC0() == ERROR_INTERNET_CANNOT_CONNECT),
        "request failed: %u\n", FUNC0());

    FUNC3(req);
    FUNC3(con);
    FUNC3(ses);
    return ret;
}