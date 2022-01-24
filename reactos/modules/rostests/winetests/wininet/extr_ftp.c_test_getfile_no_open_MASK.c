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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_NOT_INITIALIZED ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FTP_TRANSFER_TYPE_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL      bRet;

    /* Invalid internet handle, the others are valid parameters */
    FUNC2(0xdeadbeef);
    bRet = FUNC0(NULL, "welcome.msg", "should_be_non_existing_deadbeef", FALSE, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_UNKNOWN, 0);
    FUNC3 ( bRet == FALSE, "Expected FtpGetFileA to fail\n");
    FUNC3 ( FUNC1() == ERROR_INTERNET_NOT_INITIALIZED ||
         FUNC1() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INTERNET_NOT_INITIALIZED or ERROR_INVALID_HANDLE (win98), got %d\n", FUNC1());
}