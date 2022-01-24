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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_FLAG_NO_CACHE_WRITE ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(int port)
{
    HINTERNET session, connect, request;
    BOOL ret;

    session = FUNC5("winetest", INTERNET_OPEN_TYPE_DIRECT, NULL, NULL, 0);
    FUNC6(session != NULL, "InternetOpen failed\n");

    connect = FUNC4(session, "localhost", port, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    FUNC6(connect != NULL, "InternetConnect failed\n");

    request = FUNC1(connect, "RPC_OUT_DATA", "/test_cache_control_verb", NULL, NULL, NULL,
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    FUNC6(request != NULL, "HttpOpenRequest failed\n");
    ret = FUNC2(request, NULL, 0, NULL, 0);
    FUNC6(ret, "HttpSendRequest failed %u\n", FUNC0());
    FUNC7(request, 200);
    FUNC3(request);

    request = FUNC1(connect, "POST", "/test_cache_control_verb", NULL, NULL, NULL,
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    FUNC6(request != NULL, "HttpOpenRequest failed\n");
    ret = FUNC2(request, NULL, 0, NULL, 0);
    FUNC6(ret, "HttpSendRequest failed %u\n", FUNC0());
    FUNC7(request, 200);
    FUNC3(request);

    request = FUNC1(connect, "HEAD", "/test_cache_control_verb", NULL, NULL, NULL,
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    FUNC6(request != NULL, "HttpOpenRequest failed\n");
    ret = FUNC2(request, NULL, 0, NULL, 0);
    FUNC6(ret, "HttpSendRequest failed %u\n", FUNC0());
    FUNC7(request, 200);
    FUNC3(request);

    request = FUNC1(connect, "GET", "/test_cache_control_verb", NULL, NULL, NULL,
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    FUNC6(request != NULL, "HttpOpenRequest failed\n");
    ret = FUNC2(request, NULL, 0, NULL, 0);
    FUNC6(ret, "HttpSendRequest failed %u\n", FUNC0());
    FUNC7(request, 200);
    FUNC3(request);

    FUNC3(connect);
    FUNC3(session);
}