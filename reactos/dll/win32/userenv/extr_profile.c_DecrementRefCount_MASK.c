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
typedef  int /*<<< orphan*/  dwRefCount ;
typedef  char* PWSTR ;
typedef  scalar_t__* PDWORD ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int KEY_QUERY_VALUE ; 
 int KEY_SET_VALUE ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static
DWORD
FUNC5(
    PWSTR pszSidString,
    PDWORD pdwRefCount)
{
    HKEY hProfilesKey = NULL, hProfileKey = NULL;
    DWORD dwRefCount = 0, dwLength, dwType;
    DWORD dwError;

    FUNC0("DecrementRefCount(%S %p)\n",
            pszSidString, pdwRefCount);

    dwError = FUNC2(HKEY_LOCAL_MACHINE,
                            L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProfileList",
                            0,
                            KEY_QUERY_VALUE,
                            &hProfilesKey);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC0("Error: %lu\n", dwError);
        goto done;
    }

    dwError = FUNC2(hProfilesKey,
                            pszSidString,
                            0,
                            KEY_QUERY_VALUE | KEY_SET_VALUE,
                            &hProfileKey);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC0("Error: %lu\n", dwError);
        goto done;
    }

    /* Get the reference counter */
    dwLength = sizeof(dwRefCount);
    dwError = FUNC3(hProfileKey,
                               L"RefCount",
                               NULL,
                               &dwType,
                               (PBYTE)&dwRefCount,
                               &dwLength);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC0("Error: %lu\n", dwError);
        goto done;
    }

    dwRefCount--;

    dwLength = sizeof(dwRefCount);
    dwError = FUNC4(hProfileKey,
                             L"RefCount",
                             0,
                             REG_DWORD,
                             (PBYTE)&dwRefCount,
                             dwLength);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC0("Error: %lu\n", dwError);
        goto done;
    }

    if (pdwRefCount != NULL)
        *pdwRefCount = dwRefCount;

done:
    if (hProfileKey != NULL)
        FUNC1(hProfileKey);

    if (hProfilesKey != NULL)
        FUNC1(hProfilesKey);

    return dwError;
}