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
typedef  int /*<<< orphan*/  data ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_QUERY_VALUE ; 
 int FUNC0 () ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(BOOL bMachine, const char* valueName, const char* value)
{
    HKEY key = NULL;
    LSTATUS lstatus = FUNC2(bMachine ? HKEY_LOCAL_MACHINE : HKEY_CURRENT_USER,
        "Software\\Microsoft\\Windows NT\\CurrentVersion\\AppCompatFlags\\Layers", 0, NULL, 0, FUNC0() | KEY_QUERY_VALUE, NULL, &key, NULL);
    FUNC5(lstatus == ERROR_SUCCESS, "Expected to be able to open a registry key\n");
    if (lstatus == ERROR_SUCCESS)
    {
        char data[512] = { 0 };
        DWORD dwType = 0;
        DWORD dwDataLen = sizeof(data);
        lstatus = FUNC3(key, valueName, NULL, &dwType, (LPBYTE)data, &dwDataLen);
        if (value)
        {
            FUNC5(lstatus == ERROR_SUCCESS, "Expected to get a valid value, err: %u\n", lstatus);
            if (lstatus == ERROR_SUCCESS)
            {
                FUNC5(dwType == REG_SZ, "Expected the type to be REG_SZ, was: %u\n", dwType);
                FUNC5(!FUNC4(data, value), "Expected the data to be: '%s', was: '%s'\n", value, data);
            }
        }
        else
        {
            FUNC5(lstatus == ERROR_FILE_NOT_FOUND, "Expected not to find the value %s\n", valueName);
        }
        FUNC1(key);
    }
}