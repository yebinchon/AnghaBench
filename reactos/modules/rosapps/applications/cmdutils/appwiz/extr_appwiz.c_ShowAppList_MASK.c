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
typedef  char TCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int APP_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int FOREGROUND_GREEN ; 
 int FOREGROUND_INTENSITY ; 
 int FOREGROUND_RED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int REG_DWORD ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int SHOW_ALL ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int UPD_ONLY ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,char*) ; 

int FUNC12(DWORD dwMode, INT iItem)
{
    HKEY hKey, hSubKey;
    DWORD dwSize, dwType, dwValue;
    TCHAR szName[MAX_PATH];
    TCHAR szParentKeyName[MAX_PATH];
    TCHAR szDisplayName[MAX_PATH];
    TCHAR szOutBuf[MAX_PATH];
    FILETIME FileTime;
    BOOL bIsUpdate = FALSE;
    BOOL bIsSystemComponent = FALSE;
    INT iIndex = 0, iColor = 0, iCount = 1;
    HANDLE hOutput;

    if (FUNC5(HKEY_LOCAL_MACHINE,
                   FUNC8("Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall"),
                   &hKey) != ERROR_SUCCESS)
    {
        FUNC10(FUNC8("ERROR: Can not open Uninstall key. Press any key for continue...\n"));
        FUNC9();
        return 0;
    }

    hOutput = FUNC2(STD_OUTPUT_HANDLE);
    FUNC7(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);

    dwSize = MAX_PATH;
    while (FUNC4(hKey, iIndex, szName, &dwSize, NULL, NULL, NULL, &FileTime) == ERROR_SUCCESS)
    {
        if (FUNC5(hKey, szName, &hSubKey) == ERROR_SUCCESS)
        {
            dwType = REG_DWORD;
            dwSize = sizeof(DWORD);

            if (FUNC6(hSubKey, FUNC8("SystemComponent"),
                                NULL, &dwType,
                                (LPBYTE)&dwValue, &dwSize) == ERROR_SUCCESS)
            {
                bIsSystemComponent = (dwValue == 0x1);
            }
            else
            {
                bIsSystemComponent = FALSE;
            }

            dwType = REG_SZ;
            dwSize = MAX_PATH;

            bIsUpdate = (FUNC6(hSubKey, FUNC8("ParentKeyName"),
                                         NULL, &dwType,
                                         (LPBYTE) szParentKeyName,
                                         &dwSize) == ERROR_SUCCESS);
            dwSize = MAX_PATH;
            if (FUNC6(hSubKey, FUNC8("DisplayName"),
                                NULL, &dwType,
                                (LPBYTE) szDisplayName,
                                &dwSize) == ERROR_SUCCESS)
            {
                if (!bIsSystemComponent)
                {
                    if ((dwMode == SHOW_ALL) || ((dwMode == APP_ONLY) && (!bIsUpdate)) || ((dwMode == UPD_ONLY) && (bIsUpdate)))
                    {
                        if (iItem == -1)
                        {
                            FUNC11(szOutBuf, FUNC8(" %d \t %s\n"), iCount, szDisplayName);
                            FUNC1(szOutBuf, szOutBuf);
                            FUNC10("%s", szOutBuf);
                        }
                        else
                        {
                            dwType = REG_SZ;
                            dwSize = MAX_PATH;

                            if ((FUNC6(hSubKey, FUNC8("UninstallString"), NULL, &dwType,
                                                (LPBYTE) szOutBuf, &dwSize) == ERROR_SUCCESS) && (iItem == iCount))
                            {
                                FUNC0(szOutBuf);
                            }
                        }
                        iCount++;
                        iColor++;
                    }
                }
            }
        }

        if (iColor <= 5)
        {
            FUNC7(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);
        }
        else
        {
            FUNC7(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY | FOREGROUND_RED);
            if (iColor >= 10) iColor = 0;
        }

        dwSize = MAX_PATH;
        iIndex++;
    }

    FUNC3(hSubKey);
    FUNC3(hKey);

    FUNC7(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);
    FUNC10("\n\nPlease enter application/update number and press ENTER for uninstall\nor press any key for Exit...\n");

    return 1;
}