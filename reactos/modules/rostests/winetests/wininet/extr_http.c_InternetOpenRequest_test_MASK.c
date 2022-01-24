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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  INTERNET_FLAG_NO_CACHE_WRITE ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HINTERNET session, connect, request;
    static const char *types[] = { "*", "", NULL };
    static const WCHAR slash[] = {'/', 0}, any[] = {'*', 0}, empty[] = {0};
    static const WCHAR *typesW[] = { any, empty, NULL };
    BOOL ret;

    session = FUNC7("Wine Regression Test", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, 0);
    FUNC8(session != NULL ,"Unable to open Internet session\n");

    connect = FUNC6(session, NULL, INTERNET_DEFAULT_HTTP_PORT, NULL, NULL,
                              INTERNET_SERVICE_HTTP, 0, 0);
    FUNC8(connect == NULL, "InternetConnectA should have failed\n");
    FUNC8(FUNC0() == ERROR_INVALID_PARAMETER, "InternetConnectA with NULL server named should have failed with ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    connect = FUNC6(session, "", INTERNET_DEFAULT_HTTP_PORT, NULL, NULL,
                              INTERNET_SERVICE_HTTP, 0, 0);
    FUNC8(connect == NULL, "InternetConnectA should have failed\n");
    FUNC8(FUNC0() == ERROR_INVALID_PARAMETER, "InternetConnectA with blank server named should have failed with ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    connect = FUNC6(session, "test.winehq.org", INTERNET_DEFAULT_HTTP_PORT, NULL, NULL,
                              INTERNET_SERVICE_HTTP, 0, 0);
    FUNC8(connect != NULL, "Unable to connect to http://test.winehq.org with error %d\n", FUNC0());

    request = FUNC1(connect, NULL, "/", NULL, NULL, types, INTERNET_FLAG_NO_CACHE_WRITE, 0);
    if (!request && FUNC0() == ERROR_INTERNET_NAME_NOT_RESOLVED)
    {
        FUNC9( "Network unreachable, skipping test\n" );
        goto done;
    }
    FUNC8(request != NULL, "Failed to open request handle err %u\n", FUNC0());

    ret = FUNC4(request, NULL, 0, NULL, 0);
    FUNC8(ret, "HttpSendRequest failed: %u\n", FUNC0());
    FUNC8(FUNC5(request), "Close request handle failed\n");

    request = FUNC2(connect, NULL, slash, NULL, NULL, typesW, INTERNET_FLAG_NO_CACHE_WRITE, 0);
    FUNC8(request != NULL, "Failed to open request handle err %u\n", FUNC0());

    ret = FUNC3(request, NULL, 0, NULL, 0);
    FUNC8(ret, "HttpSendRequest failed: %u\n", FUNC0());
    FUNC8(FUNC5(request), "Close request handle failed\n");

done:
    FUNC8(FUNC5(connect), "Close connect handle failed\n");
    FUNC8(FUNC5(session), "Close session handle failed\n");
}