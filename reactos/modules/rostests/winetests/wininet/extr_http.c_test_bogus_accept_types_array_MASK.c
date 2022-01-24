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
 int HTTP_QUERY_ACCEPT ; 
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTERNET_FLAG_FORMS_SUBMIT ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HINTERNET ses, con, req;
    static const char *types[] = { (const char *)6240, "*/*", "%p", "", (const char *)0xffffffff, "*/*", NULL };
    DWORD size, error;
    char buffer[32];
    BOOL ret;

    ses = FUNC5("MERONG(0.9/;p)", INTERNET_OPEN_TYPE_DIRECT, "", "", 0);
    con = FUNC4(ses, "www.winehq.org", 80, NULL, NULL, INTERNET_SERVICE_HTTP, 0, 0);
    req = FUNC1(con, "POST", "/post/post_action.php", "HTTP/1.0", "", types, INTERNET_FLAG_FORMS_SUBMIT, 0);

    FUNC8(req != NULL, "HttpOpenRequest failed: %u\n", FUNC0());

    buffer[0] = 0;
    size = sizeof(buffer);
    FUNC6(0xdeadbeef);
    ret = FUNC2(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, NULL);
    error = FUNC0();
    FUNC8(!ret || FUNC7(ret), "HttpQueryInfo succeeded\n");
    if (!ret) FUNC8(error == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", error);
    FUNC8(FUNC7(!FUNC9(buffer, ", */*, %p, , , */*")) /* IE6 */ ||
       FUNC7(!FUNC9(buffer, "*/*, %p, */*")) /* IE7/8 */ ||
       !FUNC9(buffer, ""), "got '%s' expected ''\n", buffer);

    FUNC3(req);
    FUNC3(con);
    FUNC3(ses);
}