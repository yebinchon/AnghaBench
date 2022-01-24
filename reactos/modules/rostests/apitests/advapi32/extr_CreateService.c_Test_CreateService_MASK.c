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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  DNS_ERROR_RCODE_NXRRSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_CREATE_SERVICE ; 
 int /*<<< orphan*/  SERVICE_BOOT_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_IGNORE ; 
 int /*<<< orphan*/  SERVICE_KERNEL_DRIVER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    SC_HANDLE hScm = NULL;
    SC_HANDLE hService1 = NULL, hService2 = NULL;
    SC_HANDLE hService3 = NULL;
    DWORD tag1 = 0, tag2 = 0;
    DWORD tag3 = 785;

    FUNC6(DNS_ERROR_RCODE_NXRRSET);
    hScm = FUNC5(NULL, NULL, SC_MANAGER_CREATE_SERVICE);
    FUNC7(hScm != NULL, "Failed to open service manager, error=0x%08lx\n", FUNC3());
    if (!hScm)
    {
        FUNC9("No service control manager; cannot proceed with CreateService test\n");
        goto cleanup;
    }

    FUNC8(ERROR_SUCCESS);

    if (FUNC4(hScm, L"advapi32_apitest_CreateService_Test_Service1", &hService1, &tag1))
        goto cleanup;

    if (FUNC4(hScm, L"advapi32_apitest_CreateService_Test_Service2", &hService2, &tag2))
        goto cleanup;

    FUNC7(tag1 != tag2, "tag1=%lu, tag2=%lu\n", tag1, tag2);

    /* ask for a tag, but don't have a group */
    hService3 = FUNC1(
                    hScm,
                    L"advapi32_apitest_CreateService_Test_Service2",
                    NULL,
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    NULL,
                    &tag3,
                    NULL,
                    NULL,
                    NULL);
    FUNC7(hService3 == NULL, "hService3=%p\n", hService3);
    FUNC7(FUNC3() == ERROR_INVALID_PARAMETER, "error=%lu\n", FUNC3());
    FUNC7(tag3 == 785, "tag3=%lu\n", tag3);
    FUNC2(hService3);

    hService3 = FUNC1(
                    hScm,
                    L"advapi32_apitest_CreateService_Test_Service2",
                    NULL,
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    L"",
                    &tag3,
                    NULL,
                    NULL,
                    NULL);
    FUNC7(hService3 == NULL, "hService3=%p\n", hService3);
    FUNC7(FUNC3() == ERROR_INVALID_PARAMETER, "error=%lu\n", FUNC3());
    FUNC7(tag3 == 785, "tag3=%lu\n", tag3);
    FUNC2(hService3);

cleanup:

    FUNC2(hService2);
    FUNC2(hService1);

    if (hScm)
        FUNC0(hScm);
}