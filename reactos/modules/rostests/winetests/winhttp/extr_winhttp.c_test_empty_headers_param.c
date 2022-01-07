
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HINTERNET ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ;
 scalar_t__ ERROR_WINHTTP_TIMEOUT ;
 scalar_t__ GetLastError () ;
 int WinHttpCloseHandle (int *) ;
 int * WinHttpConnect (int *,int ,int,int ) ;
 int * WinHttpOpen (int ,int ,int *,int *,int ) ;
 int * WinHttpOpenRequest (int *,int *,int *,int *,int *,int *,int ) ;
 int WinHttpSendRequest (int *,int const*,int ,int *,int ,int ,int ) ;
 int ok (int ,char*,scalar_t__) ;
 int skip (char*) ;
 int test_useragent ;
 int test_winehq ;

__attribute__((used)) static void test_empty_headers_param(void)
{
    static const WCHAR empty[] = {0};
    HINTERNET ses, con, req;
    DWORD err;
    BOOL ret;

    ses = WinHttpOpen(test_useragent, 0, ((void*)0), ((void*)0), 0);
    ok(ses != ((void*)0), "failed to open session %u\n", GetLastError());

    con = WinHttpConnect(ses, test_winehq, 80, 0);
    ok(con != ((void*)0), "failed to open a connection %u\n", GetLastError());

    req = WinHttpOpenRequest(con, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
    ok(req != ((void*)0), "failed to open a request %u\n", GetLastError());

    ret = WinHttpSendRequest(req, empty, 0, ((void*)0), 0, 0, 0);
    err = GetLastError();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        skip("connection failed, skipping\n");
        goto done;
    }
    ok(ret, "failed to send request %u\n", GetLastError());

 done:
    WinHttpCloseHandle(req);
    WinHttpCloseHandle(con);
    WinHttpCloseHandle(ses);
}
