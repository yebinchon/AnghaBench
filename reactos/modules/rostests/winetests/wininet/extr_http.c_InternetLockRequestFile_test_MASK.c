#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  request; } ;
typedef  TYPE_1__ test_request_t ;
typedef  int /*<<< orphan*/  file_name ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INTERNET_ITEM_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_SHARING_VIOLATION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  INTERNET_OPTION_DATAFILE_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    char file_name[MAX_PATH];
    test_request_t req;
    HANDLE lock, lock2;
    DWORD size;
    BOOL ret;

    FUNC8(&req, "test.winehq.org", INTERNET_DEFAULT_HTTP_PORT, NULL, "/tests/hello.html");

    size = sizeof(file_name);
    ret = FUNC5(req.request, INTERNET_OPTION_DATAFILE_NAME, file_name, &size);
    FUNC7(!ret, "InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) succeeded\n");
    FUNC7(FUNC1() == ERROR_INTERNET_ITEM_NOT_FOUND, "GetLastError()=%u\n", FUNC1());
    FUNC7(!size, "size = %d\n", size);

    lock = NULL;
    ret = FUNC4(req.request, &lock);
    FUNC7(!ret && FUNC1() == ERROR_FILE_NOT_FOUND, "InternetLockRequestFile returned: %x(%u)\n", ret, FUNC1());

    ret = FUNC2(req.request, NULL, 0, NULL, 0);
    FUNC7(ret, "HttpSendRequest failed: %u\n", FUNC1());

    size = sizeof(file_name);
    ret = FUNC5(req.request, INTERNET_OPTION_DATAFILE_NAME, file_name, &size);
    FUNC7(ret, "InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) failed: %u\n", FUNC1());

    ret = FUNC4(req.request, &lock);
    FUNC7(ret, "InternetLockRequestFile returned: %x(%u)\n", ret, FUNC1());
    FUNC7(lock != NULL, "lock == NULL\n");

    ret = FUNC4(req.request, &lock2);
    FUNC7(ret, "InternetLockRequestFile returned: %x(%u)\n", ret, FUNC1());
    FUNC7(lock == lock2, "lock != lock2\n");

    ret = FUNC6(lock2);
    FUNC7(ret, "InternetUnlockRequestFile failed: %u\n", FUNC1());

    ret = FUNC0(file_name);
    FUNC7(!ret && FUNC1() == ERROR_SHARING_VIOLATION, "Deleting file returned %x(%u)\n", ret, FUNC1());

    FUNC7(FUNC3(req.request), "Close request handle failed\n");

    ret = FUNC0(file_name);
    FUNC7(!ret && FUNC1() == ERROR_SHARING_VIOLATION, "Deleting file returned %x(%u)\n", ret, FUNC1());

    ret = FUNC6(lock);
    FUNC7(ret, "InternetUnlockRequestFile failed: %u\n", FUNC1());

    ret = FUNC0(file_name);
    FUNC7(ret, "Deleting file returned %x(%u)\n", ret, FUNC1());
}