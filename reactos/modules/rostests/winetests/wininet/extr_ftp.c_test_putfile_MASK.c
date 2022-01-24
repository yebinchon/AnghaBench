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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ; 
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 int FTP_TRANSFER_TYPE_UNKNOWN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL      bRet;
    HANDLE    hFile;

    /* The order of checking is:
     *
     *   All parameters except 'session handle' and 'condition flags'
     *   Session handle
     *   Session handle type
     *   Condition flags
     */

    /* Test to show the parameter checking order depends on the Windows version */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(NULL, NULL, "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INVALID_HANDLE ||
         FUNC4() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_HANDLE (win98) or ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    /* Test to show session handle is checked before 'condition flags' */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(NULL, "non_existing_local", "non_existing_remote", 5, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC4());

    /* Start clean */
    FUNC2("non_existing_local");

    /* No local file given */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hFtp, NULL, "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    /* No remote file given */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hFtp, "non_existing_local", NULL, FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    /* Illegal condition flags */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hFtp, "non_existing_local", "non_existing_remote", 5, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_FILE_NOT_FOUND || FUNC4() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_FILE_NOT_FOUND or ERROR_INVALID_PARAMETER (win98), got %d\n", FUNC4());

    /* Parameters are OK but local file doesn't exist */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hFtp, "non_existing_local", "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_FILE_NOT_FOUND,
        "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC4());

    /* Create a temporary local file */
    FUNC5(0xdeadbeef);
    hFile = FUNC1("now_existing_local", GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    FUNC6 ( hFile != NULL, "Error creating a local file : %d\n", FUNC4());
    FUNC0(hFile);

    /* Local file exists but we shouldn't be allowed to 'put' the file */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hFtp, "now_existing_local", "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INTERNET_EXTENDED_ERROR,
        "Expected ERROR_INTERNET_EXTENDED_ERROR, got %d\n", FUNC4());

    FUNC2("now_existing_local");

    /* Test to show the parameter checking order depends on the Windows version */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hConnect, NULL, "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE ||
         FUNC4() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE (win98) or ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    /* Test to show that 'session handle type' is checked before 'condition flags' */
    FUNC5(0xdeadbeef);
    bRet = FUNC3(hConnect, "non_existing_local", "non_existing_remote", 5, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC4());

    FUNC5(0xdeadbeef);
    bRet = FUNC3(hConnect, "non_existing_local", "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC6 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
    FUNC6 ( FUNC4() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC4());
}