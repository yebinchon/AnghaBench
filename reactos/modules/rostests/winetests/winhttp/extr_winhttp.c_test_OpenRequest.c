
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ;
 scalar_t__ ERROR_WINHTTP_NAME_NOT_RESOLVED ;
 scalar_t__ ERROR_WINHTTP_TIMEOUT ;
 scalar_t__ GetLastError () ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int WINHTTP_ACCESS_TYPE_DEFAULT_PROXY ;
 int WINHTTP_DEFAULT_ACCEPT_TYPES ;
 int WINHTTP_NO_ADDITIONAL_HEADERS ;
 int WINHTTP_NO_PROXY_BYPASS ;
 int WINHTTP_NO_PROXY_NAME ;
 int WINHTTP_NO_REFERER ;
 scalar_t__ WSAEINVAL ;
 scalar_t__ WinHttpCloseHandle (int *) ;
 int * WinHttpConnect (int *,int *,int ,int ) ;
 int * WinHttpOpen (int ,int ,int ,int ,int ) ;
 int * WinHttpOpenRequest (int *,int *,int *,int *,int ,int ,int ) ;
 scalar_t__ WinHttpSendRequest (int *,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int test_useragent ;
 int * test_winehq ;

__attribute__((used)) static void test_OpenRequest (void)
{
    BOOL ret;
    HINTERNET session, request, connection;
    DWORD err;

    SetLastError(0xdeadbeef);
    session = WinHttpOpen(test_useragent, WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    err = GetLastError();
    ok(session != ((void*)0), "WinHttpOpen failed to open session.\n");
    ok(err == ERROR_SUCCESS, "got %u\n", err);


    SetLastError(0xdeadbeef);
    connection = WinHttpConnect(session, ((void*)0), INTERNET_DEFAULT_HTTP_PORT, 0);
    err = GetLastError();
    ok (connection == ((void*)0), "WinHttpConnect succeeded in opening connection to NULL server argument.\n");
    ok(err == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u.\n", err);


    SetLastError(0xdeadbeef);
    connection = WinHttpConnect (session, test_winehq, INTERNET_DEFAULT_HTTP_PORT, 0);
    err = GetLastError();
    ok(connection != ((void*)0), "WinHttpConnect failed to open a connection, error: %u.\n", err);
    ok(err == ERROR_SUCCESS || broken(err == WSAEINVAL) , "got %u\n", err);

    SetLastError(0xdeadbeef);
    request = WinHttpOpenRequest(connection, ((void*)0), ((void*)0), ((void*)0), WINHTTP_NO_REFERER,
        WINHTTP_DEFAULT_ACCEPT_TYPES, 0);
    err = GetLastError();
    if (request == ((void*)0) && err == ERROR_WINHTTP_NAME_NOT_RESOLVED)
    {
        skip("Network unreachable, skipping.\n");
        goto done;
    }
    ok(request != ((void*)0), "WinHttpOpenrequest failed to open a request, error: %u.\n", err);
    ok(err == ERROR_SUCCESS, "got %u\n", err);

    SetLastError(0xdeadbeef);
    ret = WinHttpSendRequest(request, WINHTTP_NO_ADDITIONAL_HEADERS, 0, ((void*)0), 0, 0, 0);
    err = GetLastError();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        skip("Connection failed, skipping.\n");
        goto done;
    }
    ok(ret, "WinHttpSendRequest failed: %u\n", err);
    ok(err == ERROR_SUCCESS, "got %u\n", err);

    SetLastError(0xdeadbeef);
    ret = WinHttpCloseHandle(request);
    err = GetLastError();
    ok(ret, "WinHttpCloseHandle failed on closing request, got %u.\n", err);
    ok(err == ERROR_SUCCESS, "got %u\n", err);

 done:
    ret = WinHttpCloseHandle(connection);
    ok(ret == TRUE, "WinHttpCloseHandle failed on closing connection, got %d.\n", ret);
    ret = WinHttpCloseHandle(session);
    ok(ret == TRUE, "WinHttpCloseHandle failed on closing session, got %d.\n", ret);

}
