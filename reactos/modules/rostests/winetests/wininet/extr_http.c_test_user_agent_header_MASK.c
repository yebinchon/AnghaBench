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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_HTTP_HEADER_NOT_FOUND ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  HTTP_ADDREQ_FLAG_ADD_IF_NEW ; 
 int HTTP_QUERY_ACCEPT ; 
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ; 
 int HTTP_QUERY_USER_AGENT ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HINTERNET ses, con, req;
    DWORD size, err;
    char buffer[64];
    BOOL ret;

    ses = FUNC6("Gizmo5", INTERNET_OPEN_TYPE_PRECONFIG, NULL, NULL, 0);
    FUNC7(ses != NULL, "InternetOpen failed\n");

    con = FUNC5(ses, "test.winehq.org", 80, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    FUNC7(con != NULL, "InternetConnect failed\n");

    req = FUNC2(con, "GET", "/tests/hello.html", "HTTP/1.0", NULL, NULL, 0, 0);
    FUNC7(req != NULL, "HttpOpenRequest failed\n");

    size = sizeof(buffer);
    ret = FUNC3(req, HTTP_QUERY_USER_AGENT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, NULL);
    err = FUNC0();
    FUNC7(!ret, "HttpQueryInfo succeeded\n");
    FUNC7(err == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", err);

    ret = FUNC1(req, "User-Agent: Gizmo Project\r\n", ~0u, HTTP_ADDREQ_FLAG_ADD_IF_NEW);
    FUNC7(ret, "HttpAddRequestHeaders succeeded\n");

    size = sizeof(buffer);
    ret = FUNC3(req, HTTP_QUERY_USER_AGENT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, NULL);
    err = FUNC0();
    FUNC7(ret, "HttpQueryInfo failed\n");

    FUNC4(req);

    req = FUNC2(con, "GET", "/", "HTTP/1.0", NULL, NULL, 0, 0);
    FUNC7(req != NULL, "HttpOpenRequest failed\n");

    size = sizeof(buffer);
    ret = FUNC3(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, NULL);
    err = FUNC0();
    FUNC7(!ret, "HttpQueryInfo succeeded\n");
    FUNC7(err == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", err);

    ret = FUNC1(req, "Accept: audio/*, image/*, text/*\r\nUser-Agent: Gizmo Project\r\n", ~0u, HTTP_ADDREQ_FLAG_ADD_IF_NEW);
    FUNC7(ret, "HttpAddRequestHeaders failed\n");

    buffer[0] = 0;
    size = sizeof(buffer);
    ret = FUNC3(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, NULL);
    FUNC7(ret, "HttpQueryInfo failed: %u\n", FUNC0());
    FUNC7(!FUNC8(buffer, "audio/*, image/*, text/*"), "got '%s' expected 'audio/*, image/*, text/*'\n", buffer);

    FUNC4(req);
    FUNC4(con);
    FUNC4(ses);
}