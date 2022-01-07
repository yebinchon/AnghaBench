
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;


 scalar_t__ ERROR_INTERNET_LOGIN_FAILURE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int INTERNET_DEFAULT_FTP_PORT ;
 int INTERNET_FLAG_PASSIVE ;
 int INTERNET_SERVICE_FTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int ,char*,char*,int ,int ,int ) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_connect(HINTERNET hInternet)
{
    HINTERNET hFtp;
    SetLastError(0xdeadbeef);
    hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "anonymous", ((void*)0), INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (hFtp)
    {
        ok ( GetLastError() == ERROR_SUCCESS, "ERROR_SUCCESS, got %d\n", GetLastError());
        InternetCloseHandle(hFtp);
    }
    else
        ok ( GetLastError() == ERROR_INTERNET_LOGIN_FAILURE,
             "Expected ERROR_INTERNET_LOGIN_FAILURE, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, ((void*)0), "IEUser@", INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    ok ( hFtp == ((void*)0), "Expected InternetConnect to fail\n");
    ok ( GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "", "IEUser@",
            INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    ok(!hFtp, "Expected InternetConnect to fail\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, ((void*)0), ((void*)0), INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (!hFtp && (GetLastError() == ERROR_INTERNET_LOGIN_FAILURE))
    {

        SetLastError(0xdeadbeef);
        hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "anonymous", "IEUser@", INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    }
    ok ( hFtp != ((void*)0), "InternetConnect failed : %d\n", GetLastError());
    ok ( GetLastError() == ERROR_SUCCESS,
        "ERROR_SUCCESS, got %d\n", GetLastError());
    InternetCloseHandle(hFtp);

    SetLastError(0xdeadbeef);
    hFtp = InternetConnectA(hInternet, "ftp.winehq.org", INTERNET_DEFAULT_FTP_PORT, "", ((void*)0),
            INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
    if (!hFtp)
    {
        ok(GetLastError() == ERROR_INTERNET_LOGIN_FAILURE,
                "Expected ERROR_INTERNET_LOGIN_FAILURE, got %d\n", GetLastError());
    }
    else
    {
        ok(GetLastError() == ERROR_SUCCESS,
                "Expected ERROR_SUCCESS, got %d\n", GetLastError());
        InternetCloseHandle(hFtp);
    }
}
