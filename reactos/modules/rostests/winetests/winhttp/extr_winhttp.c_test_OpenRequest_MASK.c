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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ; 
 scalar_t__ ERROR_WINHTTP_NAME_NOT_RESOLVED ; 
 scalar_t__ ERROR_WINHTTP_TIMEOUT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WINHTTP_ACCESS_TYPE_DEFAULT_PROXY ; 
 int /*<<< orphan*/  WINHTTP_DEFAULT_ACCEPT_TYPES ; 
 int /*<<< orphan*/  WINHTTP_NO_ADDITIONAL_HEADERS ; 
 int /*<<< orphan*/  WINHTTP_NO_PROXY_BYPASS ; 
 int /*<<< orphan*/  WINHTTP_NO_PROXY_NAME ; 
 int /*<<< orphan*/  WINHTTP_NO_REFERER ; 
 scalar_t__ WSAEINVAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  test_useragent ; 
 int /*<<< orphan*/ * test_winehq ; 

__attribute__((used)) static void FUNC10 (void)
{
    BOOL ret;
    HINTERNET session, request, connection;
    DWORD err;

    FUNC1(0xdeadbeef);
    session = FUNC4(test_useragent, WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    err = FUNC0();
    FUNC8(session != NULL, "WinHttpOpen failed to open session.\n");
    FUNC8(err == ERROR_SUCCESS, "got %u\n", err);

    /* Test with a bad server name */
    FUNC1(0xdeadbeef);
    connection = FUNC3(session, NULL, INTERNET_DEFAULT_HTTP_PORT, 0);
    err = FUNC0();
    FUNC8 (connection == NULL, "WinHttpConnect succeeded in opening connection to NULL server argument.\n");
    FUNC8(err == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u.\n", err);

    /* Test with a valid server name */
    FUNC1(0xdeadbeef);
    connection = FUNC3 (session, test_winehq, INTERNET_DEFAULT_HTTP_PORT, 0);
    err = FUNC0();
    FUNC8(connection != NULL, "WinHttpConnect failed to open a connection, error: %u.\n", err);
    FUNC8(err == ERROR_SUCCESS || FUNC7(err == WSAEINVAL) /* < win7 */, "got %u\n", err);

    FUNC1(0xdeadbeef);
    request = FUNC5(connection, NULL, NULL, NULL, WINHTTP_NO_REFERER,
        WINHTTP_DEFAULT_ACCEPT_TYPES, 0);
    err = FUNC0();
    if (request == NULL && err == ERROR_WINHTTP_NAME_NOT_RESOLVED)
    {
        FUNC9("Network unreachable, skipping.\n");
        goto done;
    }
    FUNC8(request != NULL, "WinHttpOpenrequest failed to open a request, error: %u.\n", err);
    FUNC8(err == ERROR_SUCCESS, "got %u\n", err);

    FUNC1(0xdeadbeef);
    ret = FUNC6(request, WINHTTP_NO_ADDITIONAL_HEADERS, 0, NULL, 0, 0, 0);
    err = FUNC0();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        FUNC9("Connection failed, skipping.\n");
        goto done;
    }
    FUNC8(ret, "WinHttpSendRequest failed: %u\n", err);
    FUNC8(err == ERROR_SUCCESS, "got %u\n", err);

    FUNC1(0xdeadbeef);
    ret = FUNC2(request);
    err = FUNC0();
    FUNC8(ret, "WinHttpCloseHandle failed on closing request, got %u.\n", err);
    FUNC8(err == ERROR_SUCCESS, "got %u\n", err);

 done:
    ret = FUNC2(connection);
    FUNC8(ret == TRUE, "WinHttpCloseHandle failed on closing connection, got %d.\n", ret);
    ret = FUNC2(session);
    FUNC8(ret == TRUE, "WinHttpCloseHandle failed on closing session, got %d.\n", ret);

}