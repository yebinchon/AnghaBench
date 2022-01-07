
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulArg ;
typedef int ULONG ;
typedef int * HINTERNET ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INTERNET_BAD_OPTION_LENGTH ;
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int * HttpOpenRequestA (int *,char*,char*,int *,int *,int *,int ,int ) ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_OPTION_ERROR_MASK ;
 int INTERNET_OPTION_POLICY ;
 int INTERNET_OPTION_REFRESH ;
 int INTERNET_OPTION_SETTINGS_CHANGED ;
 int INTERNET_SERVICE_HTTP ;
 scalar_t__ InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (int *,int ,int *,int *,int ) ;
 scalar_t__ InternetQueryOptionW (int *,int ,void*,int*) ;
 scalar_t__ InternetSetOptionA (int *,int ,void*,int) ;
 scalar_t__ InternetSetOptionW (int *,int ,int *,int ) ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_InternetSetOption(void)
{
    HINTERNET ses, con, req;
    ULONG ulArg;
    DWORD size;
    BOOL ret;

    ses = InternetOpenA(((void*)0), INTERNET_OPEN_TYPE_DIRECT, ((void*)0), ((void*)0), 0);
    ok(ses != 0, "InternetOpen failed: 0x%08x\n", GetLastError());
    con = InternetConnectA(ses, "www.winehq.org", 80, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    ok(con != 0, "InternetConnect failed: 0x%08x\n", GetLastError());
    req = HttpOpenRequestA(con, "GET", "/", ((void*)0), ((void*)0), ((void*)0), 0, 0);
    ok(req != 0, "HttpOpenRequest failed: 0x%08x\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = InternetSetOptionW(ses, INTERNET_OPTION_POLICY, ((void*)0), 0);
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError should've "
            "given ERROR_INVALID_PARAMETER, gave: 0x%08x\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = InternetQueryOptionW(ses, INTERNET_OPTION_POLICY, ((void*)0), 0);
    ok(ret == FALSE, "InternetQueryOption should've failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError should've "
            "given ERROR_INVALID_PARAMETER, gave: 0x%08x\n", GetLastError());


    SetLastError(0xdeadbeef);
    size = sizeof(ulArg);
    ret = InternetQueryOptionW(((void*)0), INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, &size);
    ok(ret == FALSE, "InternetQueryOption should've failed\n");
    ok(GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %x\n", GetLastError());

    SetLastError(0xdeadbeef);
    ulArg = 11;
    ret = InternetSetOptionA(((void*)0), INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %x\n", GetLastError());

    SetLastError(0xdeadbeef);
    ulArg = 11;
    ret = InternetSetOptionA(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, 20);
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %d\n", GetLastError());

    ulArg = 11;
    ret = InternetSetOptionA(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    ok(ret == TRUE, "InternetSetOption should've succeeded\n");

    SetLastError(0xdeadbeef);
    ulArg = 4;
    ret = InternetSetOptionA(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError() = %x\n", GetLastError());

    SetLastError(0xdeadbeef);
    ulArg = 16;
    ret = InternetSetOptionA(req, INTERNET_OPTION_ERROR_MASK, (void*)&ulArg, sizeof(ULONG));
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError() = %x\n", GetLastError());

    ret = InternetSetOptionA(req, INTERNET_OPTION_SETTINGS_CHANGED, ((void*)0), 0);
    ok(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = InternetSetOptionA(con, INTERNET_OPTION_SETTINGS_CHANGED, ((void*)0), 0);
    ok(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = InternetSetOptionA(ses, INTERNET_OPTION_SETTINGS_CHANGED, ((void*)0), 0);
    ok(ret == TRUE, "InternetSetOption should've succeeded\n");

    ret = InternetSetOptionA(ses, INTERNET_OPTION_REFRESH, ((void*)0), 0);
    ok(ret == TRUE, "InternetSetOption should've succeeded\n");

    SetLastError(0xdeadbeef);
    ret = InternetSetOptionA(req, INTERNET_OPTION_REFRESH, ((void*)0), 0);
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = InternetSetOptionA(con, INTERNET_OPTION_REFRESH, ((void*)0), 0);
    ok(ret == FALSE, "InternetSetOption should've failed\n");
    ok(GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE, "GetLastError() = %u\n", GetLastError());

    ret = InternetCloseHandle(req);
    ok(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", GetLastError());
    ret = InternetCloseHandle(con);
    ok(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", GetLastError());
    ret = InternetCloseHandle(ses);
    ok(ret == TRUE, "InternetCloseHandle failed: 0x%08x\n", GetLastError());
}
