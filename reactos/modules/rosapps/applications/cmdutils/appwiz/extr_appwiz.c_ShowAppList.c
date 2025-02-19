
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int LPBYTE ;
typedef int INT ;
typedef int HKEY ;
typedef int HANDLE ;
typedef int FILETIME ;
typedef int DWORD ;
typedef int BOOL ;


 int APP_ONLY ;
 int CallUninstall (char*) ;
 int CharToOem (char*,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_INTENSITY ;
 int FOREGROUND_RED ;
 int GetStdHandle (int ) ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int REG_DWORD ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyEx (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKey (int ,char*,int *) ;
 scalar_t__ RegQueryValueEx (int ,char*,int *,int*,int ,int*) ;
 int SHOW_ALL ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleTextAttribute (int ,int) ;
 int UPD_ONLY ;
 char* _T (char*) ;
 int _getch () ;
 int printf (char*,...) ;
 int wsprintf (char*,char*,int,char*) ;

int ShowAppList(DWORD dwMode, INT iItem)
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

    if (RegOpenKey(HKEY_LOCAL_MACHINE,
                   _T("Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall"),
                   &hKey) != ERROR_SUCCESS)
    {
        printf(_T("ERROR: Can not open Uninstall key. Press any key for continue...\n"));
        _getch();
        return 0;
    }

    hOutput = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);

    dwSize = MAX_PATH;
    while (RegEnumKeyEx(hKey, iIndex, szName, &dwSize, ((void*)0), ((void*)0), ((void*)0), &FileTime) == ERROR_SUCCESS)
    {
        if (RegOpenKey(hKey, szName, &hSubKey) == ERROR_SUCCESS)
        {
            dwType = REG_DWORD;
            dwSize = sizeof(DWORD);

            if (RegQueryValueEx(hSubKey, _T("SystemComponent"),
                                ((void*)0), &dwType,
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

            bIsUpdate = (RegQueryValueEx(hSubKey, _T("ParentKeyName"),
                                         ((void*)0), &dwType,
                                         (LPBYTE) szParentKeyName,
                                         &dwSize) == ERROR_SUCCESS);
            dwSize = MAX_PATH;
            if (RegQueryValueEx(hSubKey, _T("DisplayName"),
                                ((void*)0), &dwType,
                                (LPBYTE) szDisplayName,
                                &dwSize) == ERROR_SUCCESS)
            {
                if (!bIsSystemComponent)
                {
                    if ((dwMode == SHOW_ALL) || ((dwMode == APP_ONLY) && (!bIsUpdate)) || ((dwMode == UPD_ONLY) && (bIsUpdate)))
                    {
                        if (iItem == -1)
                        {
                            wsprintf(szOutBuf, _T(" %d \t %s\n"), iCount, szDisplayName);
                            CharToOem(szOutBuf, szOutBuf);
                            printf("%s", szOutBuf);
                        }
                        else
                        {
                            dwType = REG_SZ;
                            dwSize = MAX_PATH;

                            if ((RegQueryValueEx(hSubKey, _T("UninstallString"), ((void*)0), &dwType,
                                                (LPBYTE) szOutBuf, &dwSize) == ERROR_SUCCESS) && (iItem == iCount))
                            {
                                CallUninstall(szOutBuf);
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
            SetConsoleTextAttribute(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);
        }
        else
        {
            SetConsoleTextAttribute(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY | FOREGROUND_RED);
            if (iColor >= 10) iColor = 0;
        }

        dwSize = MAX_PATH;
        iIndex++;
    }

    RegCloseKey(hSubKey);
    RegCloseKey(hKey);

    SetConsoleTextAttribute(hOutput, FOREGROUND_GREEN | FOREGROUND_INTENSITY);
    printf("\n\nPlease enter application/update number and press ENTER for uninstall\nor press any key for Exit...\n");

    return 1;
}
