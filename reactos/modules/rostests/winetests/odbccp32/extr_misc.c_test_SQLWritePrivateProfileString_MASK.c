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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ ODBC_ERROR_INVALID_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,char*,char*) ; 
 char const* abcd_key ; 
 char const* abcdini_key ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
   static const WCHAR odbc_key[] = {'S','o','f','t','w','a','r','e','\\','O','D','B','C','\\','O','D','B','C','.','I','N','I','\\','w','i','n','e','o','d','b','c',0};
   BOOL ret;
   LONG reg_ret;
   DWORD error_code;

   ret = FUNC4("wineodbc", "testing" , "value", "");
   FUNC5(!ret, "SQLWritePrivateProfileString passed\n");
   FUNC3(1, &error_code, NULL, 0, NULL);
   FUNC5(error_code == ODBC_ERROR_INVALID_STR, "SQLInstallerErrorW ret: %d\n", error_code);

   ret = FUNC4("wineodbc", "testing" , "value", NULL);
   FUNC5(!ret, "SQLWritePrivateProfileString passed\n");
   FUNC3(1, &error_code, NULL, 0, NULL);
   FUNC5(error_code == ODBC_ERROR_INVALID_STR, "SQLInstallerErrorW ret: %d\n", error_code);

   ret = FUNC4("wineodbc", "testing" , "value", "odbc.ini");
   FUNC5(ret, "SQLWritePrivateProfileString failed\n");
   if(ret)
   {
        HKEY hkey;

        ret = FUNC4("wineodbc", "testing" , NULL, "odbc.ini");
        FUNC5(ret, "SQLWritePrivateProfileString failed\n");

        reg_ret = FUNC2(HKEY_CURRENT_USER, odbc_key, 0, KEY_READ, &hkey);
        FUNC5(reg_ret == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if(reg_ret == ERROR_SUCCESS)
        {
            reg_ret = FUNC1(HKEY_CURRENT_USER, odbc_key);
            FUNC5(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");

            FUNC0(hkey);
        }
   }

   ret = FUNC4("wineodbc", "testing" , "value", "abcd.ini");
   FUNC5(ret, "SQLWritePrivateProfileString failed\n");
   if(ret)
   {
        HKEY hkey;

        reg_ret = FUNC2(HKEY_CURRENT_USER, abcd_key, 0, KEY_READ, &hkey);
        FUNC5(reg_ret == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if(reg_ret == ERROR_SUCCESS)
        {
            reg_ret = FUNC1(HKEY_CURRENT_USER, abcd_key);
            FUNC5(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");

            FUNC0(hkey);
        }

        /* Cleanup key */
        reg_ret = FUNC1(HKEY_CURRENT_USER, abcdini_key);
        FUNC5(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");
   }
}