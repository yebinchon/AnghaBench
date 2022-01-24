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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int HTTP_ADDREQ_FLAG_ADD ; 
 int HTTP_ADDREQ_FLAG_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(int port)
{
    HINTERNET ses, con, req;
    char buf[1000];
    BOOL ret;

    ses = FUNC5("winetest", INTERNET_OPEN_TYPE_DIRECT, NULL, NULL, 0);
    FUNC6(ses != NULL, "InternetOpen failed\n");

    con = FUNC4(ses, "localhost", port, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    FUNC6(con != NULL, "InternetConnect failed\n");

    req = FUNC1(con, "GET", "/echo_request", "HTTP/1.0", NULL, NULL, 0, 0);
    FUNC6(req != NULL, "HttpOpenRequest failed\n");

    ret = FUNC0(req, "Accept-Encoding: gzip\r\n", ~0u, HTTP_ADDREQ_FLAG_REPLACE | HTTP_ADDREQ_FLAG_ADD);
    FUNC6(ret, "HttpAddRequestHeaders failed\n");

    ret = FUNC2(req, NULL,  0, NULL, 0);
    FUNC6(ret, "HttpSendRequestA failed\n");

    FUNC9(req, 200);
    FUNC7(req, buf, sizeof(buf));
    FUNC6(FUNC8(buf, "Accept-Encoding: gzip") != NULL, "Accept-Encoding header not found in %s\n", buf);

    FUNC3(req);

    req = FUNC1(con, "GET", "/echo_request", "HTTP/1.0", NULL, NULL, 0, 0);
    FUNC6(req != NULL, "HttpOpenRequest failed\n");

    ret = FUNC2(req, "Accept-Encoding: gzip", ~0u, NULL, 0);
    FUNC6(ret, "HttpSendRequestA failed\n");

    FUNC9(req, 200);
    FUNC7(req, buf, sizeof(buf));
    FUNC6(FUNC8(buf, "Accept-Encoding: gzip") != NULL, "Accept-Encoding header not found in %s\n", buf);

    FUNC3(req);
    FUNC3(con);
    FUNC3(ses);
}