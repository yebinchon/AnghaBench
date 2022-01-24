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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_FTP_TRANSFER_IN_PROGRESS ; 
 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ; 
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FTP_TRANSFER_TYPE_ASCII ; 
 int /*<<< orphan*/  FTP_TRANSFER_TYPE_UNKNOWN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static void FUNC16(HINTERNET hFtp, HINTERNET hConnect)
{
    HINTERNET hOpenFile;

    /* Invalid internet handle, the rest are valid parameters */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(NULL, "welcome.msg", GENERIC_READ, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    /* No filename */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hFtp, NULL, GENERIC_READ, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    /* Illegal access flags */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hFtp, "welcome.msg", 0, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    /* Illegal combination of access flags */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hFtp, "welcome.msg", GENERIC_READ|GENERIC_WRITE, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    /* Illegal condition flags */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hFtp, "welcome.msg", GENERIC_READ, 0xffffffff, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INTERNET_EXTENDED_ERROR || FUNC10() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INTERNET_EXTENDED_ERROR or ERROR_INVALID_PARAMETER (win98), got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hFtp, "welcome.msg", GENERIC_READ, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( hOpenFile != NULL, "Expected FtpOpenFileA to succeed\n");
    FUNC14 ( FUNC10() == ERROR_SUCCESS ||
        FUNC13(FUNC10() == ERROR_FILE_NOT_FOUND), /* Win98 */
        "Expected ERROR_SUCCESS, got %u\n", FUNC10());

    if (hOpenFile)
    {
        BOOL bRet;
        DWORD error;
        HINTERNET hOpenFile2;
        HANDLE    hFile;

        /* We have a handle so all ftp calls should fail (TODO: Put all ftp-calls in here) */
        FUNC12(0xdeadbeef);
        bRet = FUNC3(hFtp, "new_directory_deadbeef");
        error = FUNC10();
        FUNC14 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_INTERNET_EXTENDED_ERROR),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
        FUNC15(error);

        FUNC12(0xdeadbeef);
        bRet = FUNC4(hFtp, "non_existent_file_deadbeef");
        error = FUNC10();
        FUNC14 ( bRet == FALSE, "Expected FtpDeleteFileA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_INTERNET_EXTENDED_ERROR),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
        FUNC15(error);

        FUNC12(0xdeadbeef);
        bRet = FUNC5(hFtp, "welcome.msg", "should_be_non_existing_deadbeef", FALSE, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_UNKNOWN, 0);
        error = FUNC10();
        FUNC14 ( bRet == FALSE || FUNC13(bRet == TRUE), "Expected FtpGetFileA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_SUCCESS),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
        FUNC2("should_be_non_existing_deadbeef"); /* Just in case */

        FUNC12(0xdeadbeef);
        hOpenFile2 = FUNC6(hFtp, "welcome.msg", GENERIC_READ, FTP_TRANSFER_TYPE_ASCII, 0);
        error = FUNC10();
        FUNC14 ( bRet == FALSE || FUNC13(bRet == TRUE), "Expected FtpOpenFileA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_SUCCESS),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
        FUNC11(hOpenFile2); /* Just in case */

        /* Create a temporary local file */
        FUNC12(0xdeadbeef);
        hFile = FUNC1("now_existing_local", GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
        FUNC14 ( hFile != NULL, "Error creating a local file : %d\n", FUNC10());
        FUNC0(hFile);
        FUNC12(0xdeadbeef);
        bRet = FUNC7(hFtp, "now_existing_local", "non_existing_remote", FTP_TRANSFER_TYPE_UNKNOWN, 0);
        error = FUNC10();
        FUNC14 ( bRet == FALSE, "Expected FtpPutFileA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_INTERNET_EXTENDED_ERROR),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
        FUNC2("now_existing_local");

        FUNC12(0xdeadbeef);
        bRet = FUNC8(hFtp, "should_be_non_existing_deadbeef_dir");
        error = FUNC10();
        FUNC14 ( bRet == FALSE, "Expected FtpRemoveDirectoryA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_INTERNET_EXTENDED_ERROR),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);

        FUNC12(0xdeadbeef);
        bRet = FUNC9(hFtp , "should_be_non_existing_deadbeef", "new");
        error = FUNC10();
        FUNC14 ( bRet == FALSE, "Expected FtpRenameFileA to fail\n");
        FUNC14 ( error == ERROR_FTP_TRANSFER_IN_PROGRESS || FUNC13(error == ERROR_INTERNET_EXTENDED_ERROR),
            "Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\n", error);
    }

    FUNC11(hOpenFile);

    /* One small test to show that handle type is checked before parameters */
    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hConnect, "welcome.msg", GENERIC_READ, 5, 0);
    FUNC14 ( !hOpenFile, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC10());
    FUNC11(hOpenFile); /* Just in case */

    FUNC12(0xdeadbeef);
    hOpenFile = FUNC6(hConnect, "welcome.msg", GENERIC_READ, FTP_TRANSFER_TYPE_ASCII, 0);
    FUNC14 ( hOpenFile == NULL, "Expected FtpOpenFileA to fail\n");
    FUNC14 ( FUNC10() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC10());

    FUNC11(hOpenFile); /* Just in case */
}