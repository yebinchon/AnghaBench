
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;
typedef int DWORD ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 char* ERROR_INSUFFICIENT_BUFFER ;
 char* ERROR_INTERNET_INCORRECT_HANDLE_TYPE ;
 char* ERROR_INVALID_HANDLE ;
 char* ERROR_INVALID_PARAMETER ;
 char* ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int FTP_TRANSFER_TYPE_ASCII ;
 scalar_t__ FtpGetCurrentDirectoryA (int *,char*,int*) ;
 char* GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ pFtpCommandA (int *,scalar_t__,int ,char*,int ,int *) ;
 int skip (char*) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_get_current_dir(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL bRet;
    DWORD dwCurrentDirectoryLen = MAX_PATH;
    CHAR lpszCurrentDirectory[MAX_PATH];

    if (!pFtpCommandA)
    {
        win_skip("FtpCommandA() is not available. Skipping the Ftp get_current_dir tests\n");
        return;
    }


    bRet = pFtpCommandA(hFtp, FALSE, FTP_TRANSFER_TYPE_ASCII, "CWD pub/", 0, ((void*)0));
    if(bRet == FALSE)
    {
        skip("Failed to change directories in test_get_current_dir(HINTERNET hFtp).\n");
        return;
    }


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( ((void*)0), ((void*)0), 0 );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( hFtp, ((void*)0), 0 );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( ((void*)0), lpszCurrentDirectory, &dwCurrentDirectoryLen );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( hFtp, lpszCurrentDirectory, 0 );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( hFtp, ((void*)0), &dwCurrentDirectoryLen );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( hConnect, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    ok ( GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
    "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got: %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpGetCurrentDirectoryA( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    ok ( bRet == TRUE, "Expected FtpGetCurrentDirectoryA to pass\n" );
    ok ( !strcmp(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to match \"/pub\"\n", lpszCurrentDirectory);
    ok ( GetLastError() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got: %d\n", GetLastError());



    SetLastError(0xdeadbeef);
    dwCurrentDirectoryLen = 4;
    lpszCurrentDirectory[4] = 'a';
    bRet = FtpGetCurrentDirectoryA( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    ok ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n");
    ok ( strcmp(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to not match \"/pub\"\n", lpszCurrentDirectory);
    ok ( GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got: %d\n", GetLastError());



    SetLastError(0xdeadbeef);
    dwCurrentDirectoryLen = 5;
    bRet = FtpGetCurrentDirectoryA( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    ok ( bRet == TRUE, "Expected FtpGetCurrentDirectoryA to pass\n");
    ok ( !strcmp(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to match \"/pub\"\n", lpszCurrentDirectory);
    ok ( GetLastError() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got: %d\n", GetLastError());
}
