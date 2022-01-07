
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;
typedef int BOOL ;


 int GetLastError () ;
 int * HttpOpenRequestA (int *,char*,char*,int *,int *,int *,int ,int ) ;
 int HttpSendRequestA (int *,int *,int ,int *,int ) ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int ok (int ,char*,...) ;
 int test_status_code (int *,int) ;

__attribute__((used)) static void test_cache_control_verb(int port)
{
    HINTERNET session, connect, request;
    BOOL ret;

    session = InternetOpenA("winetest", INTERNET_OPEN_TYPE_DIRECT, ((void*)0), ((void*)0), 0);
    ok(session != ((void*)0), "InternetOpen failed\n");

    connect = InternetConnectA(session, "localhost", port, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    ok(connect != ((void*)0), "InternetConnect failed\n");

    request = HttpOpenRequestA(connect, "RPC_OUT_DATA", "/test_cache_control_verb", ((void*)0), ((void*)0), ((void*)0),
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    ok(request != ((void*)0), "HttpOpenRequest failed\n");
    ret = HttpSendRequestA(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed %u\n", GetLastError());
    test_status_code(request, 200);
    InternetCloseHandle(request);

    request = HttpOpenRequestA(connect, "POST", "/test_cache_control_verb", ((void*)0), ((void*)0), ((void*)0),
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    ok(request != ((void*)0), "HttpOpenRequest failed\n");
    ret = HttpSendRequestA(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed %u\n", GetLastError());
    test_status_code(request, 200);
    InternetCloseHandle(request);

    request = HttpOpenRequestA(connect, "HEAD", "/test_cache_control_verb", ((void*)0), ((void*)0), ((void*)0),
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    ok(request != ((void*)0), "HttpOpenRequest failed\n");
    ret = HttpSendRequestA(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed %u\n", GetLastError());
    test_status_code(request, 200);
    InternetCloseHandle(request);

    request = HttpOpenRequestA(connect, "GET", "/test_cache_control_verb", ((void*)0), ((void*)0), ((void*)0),
                              INTERNET_FLAG_NO_CACHE_WRITE, 0);
    ok(request != ((void*)0), "HttpOpenRequest failed\n");
    ret = HttpSendRequestA(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed %u\n", GetLastError());
    test_status_code(request, 200);
    InternetCloseHandle(request);

    InternetCloseHandle(connect);
    InternetCloseHandle(session);
}
