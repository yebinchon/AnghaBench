
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout ;
typedef char WCHAR ;
typedef int * HINTERNET ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ;
 scalar_t__ ERROR_WINHTTP_NAME_NOT_RESOLVED ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int WINHTTP_OPTION_RESOLVE_TIMEOUT ;
 int WinHttpCloseHandle (int *) ;
 int * WinHttpConnect (int *,char const*,int ,int ) ;
 int * WinHttpOpen (int ,int ,int *,int *,int ) ;
 int * WinHttpOpenRequest (int *,int *,int *,int *,int *,int *,int ) ;
 int WinHttpSendRequest (int *,int *,int ,int *,int ,int ,int ) ;
 int WinHttpSetOption (int *,int ,int*,int) ;
 int ok (int,char*,...) ;
 int proxy_active () ;
 int skip (char*) ;
 int test_useragent ;
 char const* test_winehq ;

__attribute__((used)) static void test_resolve_timeout(void)
{
    static const WCHAR nxdomain[] =
        {'n','x','d','o','m','a','i','n','.','w','i','n','e','h','q','.','o','r','g',0};
    HINTERNET ses, con, req;
    DWORD timeout;
    BOOL ret;

    if (! proxy_active())
    {
        ses = WinHttpOpen(test_useragent, 0, ((void*)0), ((void*)0), 0);
        ok(ses != ((void*)0), "failed to open session %u\n", GetLastError());

        timeout = 10000;
        ret = WinHttpSetOption(ses, WINHTTP_OPTION_RESOLVE_TIMEOUT, &timeout, sizeof(timeout));
        ok(ret, "failed to set resolve timeout %u\n", GetLastError());

        con = WinHttpConnect(ses, nxdomain, 0, 0);
        ok(con != ((void*)0), "failed to open a connection %u\n", GetLastError());

        req = WinHttpOpenRequest(con, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
        ok(req != ((void*)0), "failed to open a request %u\n", GetLastError());

        SetLastError(0xdeadbeef);
        ret = WinHttpSendRequest(req, ((void*)0), 0, ((void*)0), 0, 0, 0);
        if (ret)
        {
            skip("nxdomain returned success. Broken ISP redirects?\n");
            goto done;
        }
        ok(GetLastError() == ERROR_WINHTTP_NAME_NOT_RESOLVED,
           "expected ERROR_WINHTTP_NAME_NOT_RESOLVED got %u\n", GetLastError());

        WinHttpCloseHandle(req);
        WinHttpCloseHandle(con);
        WinHttpCloseHandle(ses);
    }
    else
       skip("Skipping host resolution tests, host resolution preformed by proxy\n");

    ses = WinHttpOpen(test_useragent, 0, ((void*)0), ((void*)0), 0);
    ok(ses != ((void*)0), "failed to open session %u\n", GetLastError());

    timeout = 10000;
    ret = WinHttpSetOption(ses, WINHTTP_OPTION_RESOLVE_TIMEOUT, &timeout, sizeof(timeout));
    ok(ret, "failed to set resolve timeout %u\n", GetLastError());

    con = WinHttpConnect(ses, test_winehq, 0, 0);
    ok(con != ((void*)0), "failed to open a connection %u\n", GetLastError());

    req = WinHttpOpenRequest(con, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
    ok(req != ((void*)0), "failed to open a request %u\n", GetLastError());

    ret = WinHttpSendRequest(req, ((void*)0), 0, ((void*)0), 0, 0, 0);
    if (!ret && GetLastError() == ERROR_WINHTTP_CANNOT_CONNECT)
    {
        skip("connection failed, skipping\n");
        goto done;
    }
    ok(ret, "failed to send request\n");

 done:
    WinHttpCloseHandle(req);
    WinHttpCloseHandle(con);
    WinHttpCloseHandle(ses);
}
