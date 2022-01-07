
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INTERNET_CANNOT_CONNECT ;
 scalar_t__ GetLastError () ;
 int * HttpOpenRequestA (int *,char*,char*,int *,int *,int *,int ,int ) ;
 scalar_t__ HttpSendRequestA (int *,int *,int ,int *,int ) ;
 int INTERNET_DEFAULT_HTTPS_PORT ;
 int INTERNET_FLAG_SECURE ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int ,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static BOOL can_do_https(void)
{
    HINTERNET ses, con, req;
    BOOL ret;

    ses = InternetOpenA("winetest", INTERNET_OPEN_TYPE_PRECONFIG, ((void*)0), ((void*)0), 0);
    ok(ses != ((void*)0), "InternetOpen failed\n");

    con = InternetConnectA(ses, "test.winehq.org", INTERNET_DEFAULT_HTTPS_PORT,
            ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    ok(con != ((void*)0), "InternetConnect failed\n");

    req = HttpOpenRequestA(con, "GET", "/tests/hello.html", ((void*)0), ((void*)0), ((void*)0),
            INTERNET_FLAG_SECURE, 0);
    ok(req != ((void*)0), "HttpOpenRequest failed\n");

    ret = HttpSendRequestA(req, ((void*)0), 0, ((void*)0), 0);
    ok(ret || broken(GetLastError() == ERROR_INTERNET_CANNOT_CONNECT),
        "request failed: %u\n", GetLastError());

    InternetCloseHandle(req);
    InternetCloseHandle(con);
    InternetCloseHandle(ses);
    return ret;
}
