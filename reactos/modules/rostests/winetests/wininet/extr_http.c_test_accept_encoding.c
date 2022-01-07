
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int * HINTERNET ;
typedef int BOOL ;


 int HTTP_ADDREQ_FLAG_ADD ;
 int HTTP_ADDREQ_FLAG_REPLACE ;
 int HttpAddRequestHeadersA (int *,char*,unsigned int,int) ;
 int * HttpOpenRequestA (int *,char*,char*,char*,int *,int *,int ,int ) ;
 int HttpSendRequestA (int *,char*,unsigned int,int *,int ) ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int ok (int ,char*,...) ;
 int receive_simple_request (int *,char*,int) ;
 int * strstr (char*,char*) ;
 int test_status_code (int *,int) ;

__attribute__((used)) static void test_accept_encoding(int port)
{
    HINTERNET ses, con, req;
    char buf[1000];
    BOOL ret;

    ses = InternetOpenA("winetest", INTERNET_OPEN_TYPE_DIRECT, ((void*)0), ((void*)0), 0);
    ok(ses != ((void*)0), "InternetOpen failed\n");

    con = InternetConnectA(ses, "localhost", port, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    ok(con != ((void*)0), "InternetConnect failed\n");

    req = HttpOpenRequestA(con, "GET", "/echo_request", "HTTP/1.0", ((void*)0), ((void*)0), 0, 0);
    ok(req != ((void*)0), "HttpOpenRequest failed\n");

    ret = HttpAddRequestHeadersA(req, "Accept-Encoding: gzip\r\n", ~0u, HTTP_ADDREQ_FLAG_REPLACE | HTTP_ADDREQ_FLAG_ADD);
    ok(ret, "HttpAddRequestHeaders failed\n");

    ret = HttpSendRequestA(req, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequestA failed\n");

    test_status_code(req, 200);
    receive_simple_request(req, buf, sizeof(buf));
    ok(strstr(buf, "Accept-Encoding: gzip") != ((void*)0), "Accept-Encoding header not found in %s\n", buf);

    InternetCloseHandle(req);

    req = HttpOpenRequestA(con, "GET", "/echo_request", "HTTP/1.0", ((void*)0), ((void*)0), 0, 0);
    ok(req != ((void*)0), "HttpOpenRequest failed\n");

    ret = HttpSendRequestA(req, "Accept-Encoding: gzip", ~0u, ((void*)0), 0);
    ok(ret, "HttpSendRequestA failed\n");

    test_status_code(req, 200);
    receive_simple_request(req, buf, sizeof(buf));
    ok(strstr(buf, "Accept-Encoding: gzip") != ((void*)0), "Accept-Encoding header not found in %s\n", buf);

    InternetCloseHandle(req);
    InternetCloseHandle(con);
    InternetCloseHandle(ses);
}
