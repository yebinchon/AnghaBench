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
typedef  int /*<<< orphan*/  feature ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int ERROR_WINHTTP_INCORRECT_HANDLE_TYPE ; 
 int ERROR_WINHTTP_NAME_NOT_RESOLVED ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WINHTTP_DEFAULT_ACCEPT_TYPES ; 
 int WINHTTP_DISABLE_COOKIES ; 
 int /*<<< orphan*/  WINHTTP_NO_REFERER ; 
 int /*<<< orphan*/  WINHTTP_OPTION_DISABLE_FEATURE ; 
 int /*<<< orphan*/  WINHTTP_OPTION_REDIRECT_POLICY ; 
 int WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS ; 
 int WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  test_useragent ; 
 int /*<<< orphan*/  test_winehq ; 

__attribute__((used)) static void FUNC11(void)
{
    BOOL ret;
    HINTERNET session, request, connection;
    DWORD feature, size;

    FUNC1(0xdeadbeef);
    session = FUNC4(test_useragent, 0, 0, 0, 0);
    FUNC9(session != NULL, "WinHttpOpen failed to open session, error %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC6(session, WINHTTP_OPTION_REDIRECT_POLICY, NULL, NULL);
    FUNC9(!ret, "should fail to set redirect policy %u\n", FUNC0());
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    size = 0xdeadbeef;
    FUNC1(0xdeadbeef);
    ret = FUNC6(session, WINHTTP_OPTION_REDIRECT_POLICY, NULL, &size);
    FUNC9(!ret, "should fail to query option\n");
    FUNC9(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "expected ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());
    FUNC9(size == 4, "expected 4, got %u\n", size);

    feature = 0xdeadbeef;
    size = sizeof(feature) - 1;
    FUNC1(0xdeadbeef);
    ret = FUNC6(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, &size);
    FUNC9(!ret, "should fail to query option\n");
    FUNC9(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "expected ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());
    FUNC9(size == 4, "expected 4, got %u\n", size);

    feature = 0xdeadbeef;
    size = sizeof(feature) + 1;
    FUNC1(0xdeadbeef);
    ret = FUNC6(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, &size);
    FUNC9(ret, "failed to query option %u\n", FUNC0());
    FUNC9(FUNC0() == ERROR_SUCCESS || FUNC8(FUNC0() == 0xdeadbeef) /* < win7 */,
       "got %u\n", FUNC0());
    FUNC9(size == sizeof(feature), "WinHttpQueryOption should set the size: %u\n", size);
    FUNC9(feature == WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP,
       "expected WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP, got %#x\n", feature);

    FUNC1(0xdeadbeef);
    ret = FUNC7(session, WINHTTP_OPTION_REDIRECT_POLICY, NULL, sizeof(feature));
    FUNC9(!ret, "should fail to set redirect policy %u\n", FUNC0());
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    feature = WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS;
    FUNC1(0xdeadbeef);
    ret = FUNC7(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, sizeof(feature) - 1);
    FUNC9(!ret, "should fail to set redirect policy %u\n", FUNC0());
    FUNC9(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "expected ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());

    feature = WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS;
    FUNC1(0xdeadbeef);
    ret = FUNC7(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, sizeof(feature) + 1);
    FUNC9(!ret, "should fail to set redirect policy %u\n", FUNC0());
    FUNC9(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "expected ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());

    feature = WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS;
    FUNC1(0xdeadbeef);
    ret = FUNC7(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, sizeof(feature));
    FUNC9(ret, "failed to set redirect policy %u\n", FUNC0());

    feature = 0xdeadbeef;
    size = sizeof(feature);
    FUNC1(0xdeadbeef);
    ret = FUNC6(session, WINHTTP_OPTION_REDIRECT_POLICY, &feature, &size);
    FUNC9(ret, "failed to query option %u\n", FUNC0());
    FUNC9(feature == WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS,
       "expected WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, got %#x\n", feature);

    feature = WINHTTP_DISABLE_COOKIES;
    FUNC1(0xdeadbeef);
    ret = FUNC7(session, WINHTTP_OPTION_DISABLE_FEATURE, &feature, sizeof(feature));
    FUNC9(!ret, "should fail to set disable feature for a session\n");
    FUNC9(FUNC0() == ERROR_WINHTTP_INCORRECT_HANDLE_TYPE,
       "expected ERROR_WINHTTP_INCORRECT_HANDLE_TYPE, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    connection = FUNC3(session, test_winehq, INTERNET_DEFAULT_HTTP_PORT, 0);
    FUNC9(connection != NULL, "WinHttpConnect failed to open a connection, error: %u\n", FUNC0());

    feature = WINHTTP_DISABLE_COOKIES;
    FUNC1(0xdeadbeef);
    ret = FUNC7(connection, WINHTTP_OPTION_DISABLE_FEATURE, &feature, sizeof(feature));
    FUNC9(!ret, "should fail to set disable feature for a connection\n");
    FUNC9(FUNC0() == ERROR_WINHTTP_INCORRECT_HANDLE_TYPE,
       "expected ERROR_WINHTTP_INCORRECT_HANDLE_TYPE, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    request = FUNC5(connection, NULL, NULL, NULL, WINHTTP_NO_REFERER,
                                 WINHTTP_DEFAULT_ACCEPT_TYPES, 0);
    if (request == NULL && FUNC0() == ERROR_WINHTTP_NAME_NOT_RESOLVED)
    {
        FUNC10("Network unreachable, skipping the test\n");
        goto done;
    }

    feature = 0xdeadbeef;
    size = sizeof(feature);
    FUNC1(0xdeadbeef);
    ret = FUNC6(request, WINHTTP_OPTION_DISABLE_FEATURE, &feature, &size);
    FUNC9(!ret, "should fail to query disable feature for a request\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    feature = 0;
    size = sizeof(feature);
    FUNC1(0xdeadbeef);
    ret = FUNC7(request, WINHTTP_OPTION_DISABLE_FEATURE, &feature, sizeof(feature));
    FUNC9(ret, "failed to set feature %u\n", FUNC0());

    feature = 0xffffffff;
    size = sizeof(feature);
    FUNC1(0xdeadbeef);
    ret = FUNC7(request, WINHTTP_OPTION_DISABLE_FEATURE, &feature, sizeof(feature));
    FUNC9(ret, "failed to set feature %u\n", FUNC0());

    feature = WINHTTP_DISABLE_COOKIES;
    size = sizeof(feature);
    FUNC1(0xdeadbeef);
    ret = FUNC7(request, WINHTTP_OPTION_DISABLE_FEATURE, &feature, sizeof(feature));
    FUNC9(ret, "failed to set feature %u\n", FUNC0());

    size = 0;
    FUNC1(0xdeadbeef);
    ret = FUNC6(request, WINHTTP_OPTION_DISABLE_FEATURE, NULL, &size);
    FUNC9(!ret, "should fail to query disable feature for a request\n");
    FUNC9(FUNC0() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC2(request);
    FUNC9(ret, "WinHttpCloseHandle failed on closing request: %u\n", FUNC0());

done:
    FUNC1(0xdeadbeef);
    ret = FUNC2(connection);
    FUNC9(ret, "WinHttpCloseHandle failed on closing connection: %u\n", FUNC0());
    FUNC1(0xdeadbeef);
    ret = FUNC2(session);
    FUNC9(ret, "WinHttpCloseHandle failed on closing session: %u\n", FUNC0());
}