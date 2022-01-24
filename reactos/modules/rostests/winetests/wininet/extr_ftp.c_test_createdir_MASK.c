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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ; 
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL      bRet;

    /* Invalid internet handle, the other is a valid parameter */
    FUNC2(0xdeadbeef);
    bRet = FUNC0(NULL, "new_directory_deadbeef");
    FUNC3 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());

    /* No directory-name */
    FUNC2(0xdeadbeef);
    bRet = FUNC0(hFtp, NULL);
    FUNC3 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    /* Parameters are OK, but we shouldn't be allowed to create the directory */
    FUNC2(0xdeadbeef);
    bRet = FUNC0(hFtp, "new_directory_deadbeef");
    FUNC3 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INTERNET_EXTENDED_ERROR,
        "Expected ERROR_INTERNET_EXTENDED_ERROR, got %d\n", FUNC1());

    /* One small test to show that handle type is checked before parameters */
    FUNC2(0xdeadbeef);
    bRet = FUNC0(hConnect, NULL);
    FUNC3 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC1());

    FUNC2(0xdeadbeef);
    bRet = FUNC0(hConnect, "new_directory_deadbeef");
    FUNC3 ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", FUNC1());
}