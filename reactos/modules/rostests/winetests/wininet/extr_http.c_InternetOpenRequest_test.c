
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * HINTERNET ;
typedef int BOOL ;


 scalar_t__ ERROR_INTERNET_NAME_NOT_RESOLVED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int * HttpOpenRequestA (int *,int *,char*,int *,int *,char const**,int ,int ) ;
 int * HttpOpenRequestW (int *,int *,char const*,int *,int *,char const**,int ,int ) ;
 int HttpSendRequestA (int *,int *,int ,int *,int ) ;
 int HttpSendRequestW (int *,int *,int ,int *,int ) ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int ,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void InternetOpenRequest_test(void)
{
    HINTERNET session, connect, request;
    static const char *types[] = { "*", "", ((void*)0) };
    static const WCHAR slash[] = {'/', 0}, any[] = {'*', 0}, empty[] = {0};
    static const WCHAR *typesW[] = { any, empty, ((void*)0) };
    BOOL ret;

    session = InternetOpenA("Wine Regression Test", INTERNET_OPEN_TYPE_PRECONFIG, ((void*)0), ((void*)0), 0);
    ok(session != ((void*)0) ,"Unable to open Internet session\n");

    connect = InternetConnectA(session, ((void*)0), INTERNET_DEFAULT_HTTP_PORT, ((void*)0), ((void*)0),
                              INTERNET_SERVICE_HTTP, 0, 0);
    ok(connect == ((void*)0), "InternetConnectA should have failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "InternetConnectA with NULL server named should have failed with ERROR_INVALID_PARAMETER instead of %d\n", GetLastError());

    connect = InternetConnectA(session, "", INTERNET_DEFAULT_HTTP_PORT, ((void*)0), ((void*)0),
                              INTERNET_SERVICE_HTTP, 0, 0);
    ok(connect == ((void*)0), "InternetConnectA should have failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "InternetConnectA with blank server named should have failed with ERROR_INVALID_PARAMETER instead of %d\n", GetLastError());

    connect = InternetConnectA(session, "test.winehq.org", INTERNET_DEFAULT_HTTP_PORT, ((void*)0), ((void*)0),
                              INTERNET_SERVICE_HTTP, 0, 0);
    ok(connect != ((void*)0), "Unable to connect to http://test.winehq.org with error %d\n", GetLastError());

    request = HttpOpenRequestA(connect, ((void*)0), "/", ((void*)0), ((void*)0), types, INTERNET_FLAG_NO_CACHE_WRITE, 0);
    if (!request && GetLastError() == ERROR_INTERNET_NAME_NOT_RESOLVED)
    {
        skip( "Network unreachable, skipping test\n" );
        goto done;
    }
    ok(request != ((void*)0), "Failed to open request handle err %u\n", GetLastError());

    ret = HttpSendRequestW(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed: %u\n", GetLastError());
    ok(InternetCloseHandle(request), "Close request handle failed\n");

    request = HttpOpenRequestW(connect, ((void*)0), slash, ((void*)0), ((void*)0), typesW, INTERNET_FLAG_NO_CACHE_WRITE, 0);
    ok(request != ((void*)0), "Failed to open request handle err %u\n", GetLastError());

    ret = HttpSendRequestA(request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed: %u\n", GetLastError());
    ok(InternetCloseHandle(request), "Close request handle failed\n");

done:
    ok(InternetCloseHandle(connect), "Close connect handle failed\n");
    ok(InternetCloseHandle(session), "Close session handle failed\n");
}
