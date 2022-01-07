
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int * HINTERNET ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_HTTP_HEADER_NOT_FOUND ;
 char* GetLastError () ;
 int HTTP_ADDREQ_FLAG_ADD_IF_NEW ;
 int HTTP_QUERY_ACCEPT ;
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ;
 int HTTP_QUERY_USER_AGENT ;
 int HttpAddRequestHeadersA (int *,char*,unsigned int,int ) ;
 int * HttpOpenRequestA (int *,char*,char*,char*,int *,int *,int ,int ) ;
 int HttpQueryInfoA (int *,int,char*,scalar_t__*,int *) ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_user_agent_header(void)
{
    HINTERNET ses, con, req;
    DWORD size, err;
    char buffer[64];
    BOOL ret;

    ses = InternetOpenA("Gizmo5", INTERNET_OPEN_TYPE_PRECONFIG, ((void*)0), ((void*)0), 0);
    ok(ses != ((void*)0), "InternetOpen failed\n");

    con = InternetConnectA(ses, "test.winehq.org", 80, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    ok(con != ((void*)0), "InternetConnect failed\n");

    req = HttpOpenRequestA(con, "GET", "/tests/hello.html", "HTTP/1.0", ((void*)0), ((void*)0), 0, 0);
    ok(req != ((void*)0), "HttpOpenRequest failed\n");

    size = sizeof(buffer);
    ret = HttpQueryInfoA(req, HTTP_QUERY_USER_AGENT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, ((void*)0));
    err = GetLastError();
    ok(!ret, "HttpQueryInfo succeeded\n");
    ok(err == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", err);

    ret = HttpAddRequestHeadersA(req, "User-Agent: Gizmo Project\r\n", ~0u, HTTP_ADDREQ_FLAG_ADD_IF_NEW);
    ok(ret, "HttpAddRequestHeaders succeeded\n");

    size = sizeof(buffer);
    ret = HttpQueryInfoA(req, HTTP_QUERY_USER_AGENT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, ((void*)0));
    err = GetLastError();
    ok(ret, "HttpQueryInfo failed\n");

    InternetCloseHandle(req);

    req = HttpOpenRequestA(con, "GET", "/", "HTTP/1.0", ((void*)0), ((void*)0), 0, 0);
    ok(req != ((void*)0), "HttpOpenRequest failed\n");

    size = sizeof(buffer);
    ret = HttpQueryInfoA(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, ((void*)0));
    err = GetLastError();
    ok(!ret, "HttpQueryInfo succeeded\n");
    ok(err == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", err);

    ret = HttpAddRequestHeadersA(req, "Accept: audio/*, image/*, text/*\r\nUser-Agent: Gizmo Project\r\n", ~0u, HTTP_ADDREQ_FLAG_ADD_IF_NEW);
    ok(ret, "HttpAddRequestHeaders failed\n");

    buffer[0] = 0;
    size = sizeof(buffer);
    ret = HttpQueryInfoA(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, ((void*)0));
    ok(ret, "HttpQueryInfo failed: %u\n", GetLastError());
    ok(!strcmp(buffer, "audio/*, image/*, text/*"), "got '%s' expected 'audio/*, image/*, text/*'\n", buffer);

    InternetCloseHandle(req);
    InternetCloseHandle(con);
    InternetCloseHandle(ses);
}
