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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  DNS_ERROR_RCODE_NXRRSET ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ REG_DWORD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  SERVICE_BOOT_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_IGNORE ; 
 int /*<<< orphan*/  SERVICE_KERNEL_DRIVER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(SC_HANDLE hScm, const wchar_t *serviceName, SC_HANDLE *hService, DWORD *tag)
{
    DWORD ret;
    HKEY hKey = NULL;
    DWORD type = 0, tagData = 0, tagSize;
    wchar_t keyName[256];

    FUNC5(DNS_ERROR_RCODE_NXRRSET);
    *hService = FUNC0(
                    hScm,
                    serviceName,
                    NULL,
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    L"advapi32_apitest_CreateService_Test_Group",
                    tag,
                    NULL,
                    NULL,
                    NULL);

    FUNC7(*hService != NULL, "Failed to create service, error=0x%08lx\n", FUNC1());
    if (!*hService)
    {
        FUNC9("No service; cannot proceed with CreateService test\n");
        return 1;
    }

    FUNC8(ERROR_SUCCESS);

    FUNC7(*tag != 0, "tag is zero, expected nonzero\n");

    FUNC6(keyName, sizeof keyName, L"System\\CurrentControlSet\\Services\\%ls", serviceName);
    ret = FUNC3(HKEY_LOCAL_MACHINE, keyName, &hKey);
    FUNC7(ret == ERROR_SUCCESS, "RegOpenKeyW failed with 0x%08lx\n", ret);
    if (ret)
    {
        FUNC9("No regkey; cannot proceed with CreateService test\n");
        return 2;
    }

    tagSize = sizeof tagData;
    ret = FUNC4(hKey, L"Tag", NULL, &type, (PBYTE)&tagData, &tagSize);
    FUNC7(ret == ERROR_SUCCESS, "RegQueryValueExW returned 0x%08lx\n", ret);
    FUNC7(type == REG_DWORD, "type=%lu, expected REG_DWORD\n", type);
    FUNC7(tagSize == sizeof tagData, "tagSize=%lu, expected 4\n", tagSize);
    FUNC7(tagData == *tag, "tag=%lu, but registry says %lu\n", *tag, tagData);

    FUNC2(hKey);

    return 0;
}