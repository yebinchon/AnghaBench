#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char* ERROR_INSUFFICIENT_BUFFER ; 
 char* ERROR_INTERNET_INCORRECT_HANDLE_TYPE ; 
 char* ERROR_INVALID_HANDLE ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FTP_TRANSFER_TYPE_ASCII ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 char* FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL    bRet;
    DWORD   dwCurrentDirectoryLen = MAX_PATH;
    CHAR    lpszCurrentDirectory[MAX_PATH];

    if (!&pFtpCommandA)
    {
        FUNC7("FtpCommandA() is not available. Skipping the Ftp get_current_dir tests\n");
        return;
    }

    /* change directories to get a more interesting pwd */
    bRet = FUNC4(hFtp, FALSE, FTP_TRANSFER_TYPE_ASCII, "CWD pub/", 0, NULL);
    if(bRet == FALSE)
    {
        FUNC5("Failed to change directories in test_get_current_dir(HINTERNET hFtp).\n");
        return;
    }

    /* test with all NULL arguments */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( NULL, NULL, 0 );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got: %d\n", FUNC1());

    /* test with NULL parameters instead of expected LPSTR/LPDWORD */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( hFtp, NULL, 0 );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got: %d\n", FUNC1());

    /* test with no valid handle and valid parameters */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( NULL, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got: %d\n", FUNC1());

    /* test with invalid dwCurrentDirectory and all other parameters correct */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( hFtp, lpszCurrentDirectory, 0 );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got: %d\n", FUNC1());

    /* test with invalid lpszCurrentDirectory and all other parameters correct */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( hFtp, NULL, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got: %d\n", FUNC1());

    /* test to show it checks the handle type */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( hConnect, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n" );
    FUNC3 ( FUNC1() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
    "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got: %d\n", FUNC1());

    /* test for the current directory with legitimate values */
    FUNC2(0xdeadbeef);
    bRet = FUNC0( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == TRUE, "Expected FtpGetCurrentDirectoryA to pass\n" );
    FUNC3 ( !FUNC6(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to match \"/pub\"\n", lpszCurrentDirectory);
    FUNC3 ( FUNC1() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got: %d\n", FUNC1());

    /* test for the current directory with a size only large enough to
     * fit the string and not the null terminating character */
    FUNC2(0xdeadbeef);
    dwCurrentDirectoryLen = 4;
    lpszCurrentDirectory[4] = 'a'; /* set position 4 of the array to something else to make sure a leftover \0 isn't fooling the test */
    bRet = FUNC0( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == FALSE, "Expected FtpGetCurrentDirectoryA to fail\n");
    FUNC3 ( FUNC6(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to not match \"/pub\"\n", lpszCurrentDirectory);
    FUNC3 ( FUNC1() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got: %d\n", FUNC1());

    /* test for the current directory with a size large enough to store
     * the expected string as well as the null terminating character */
    FUNC2(0xdeadbeef);
    dwCurrentDirectoryLen = 5;
    bRet = FUNC0( hFtp, lpszCurrentDirectory, &dwCurrentDirectoryLen );
    FUNC3 ( bRet == TRUE, "Expected FtpGetCurrentDirectoryA to pass\n");
    FUNC3 ( !FUNC6(lpszCurrentDirectory, "/pub"), "Expected returned value \"%s\" to match \"/pub\"\n", lpszCurrentDirectory);
    FUNC3 ( FUNC1() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got: %d\n", FUNC1());
}