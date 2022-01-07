
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int ExpandEnvironmentStringsW (int *,int ,int) ;
 scalar_t__ FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int MAX_PATH ;
 scalar_t__ REG_EXPAND_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int ,scalar_t__*,int ,scalar_t__*) ;
 int SetLastError (scalar_t__) ;
 scalar_t__ TRUE ;
 int wcscpy (int ,int *) ;

__attribute__((used)) static
BOOL
GetDesktopPath(BOOL bCommonPath,
               LPWSTR lpDesktopPath)
{
    WCHAR szPath[MAX_PATH];
    DWORD dwLength;
    DWORD dwType;
    HKEY hKey;
    LONG Error;

    DPRINT("GetDesktopPath() called\n");

    Error = RegOpenKeyExW(HKEY_CURRENT_USER,
                          L"Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\User Shell Folders",
                          0,
                          KEY_QUERY_VALUE,
                          &hKey);
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegOpenKeyExW() failed\n");
        SetLastError((DWORD)Error);
        return FALSE;
    }

    dwLength = MAX_PATH * sizeof(WCHAR);
    Error = RegQueryValueExW(hKey,
                             bCommonPath ? L"Common Desktop" : L"Desktop",
                             0,
                             &dwType,
                             (LPBYTE)szPath,
                             &dwLength);
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegQueryValueExW() failed\n");
        RegCloseKey(hKey);
        SetLastError((DWORD)Error);
        return FALSE;
    }

    RegCloseKey(hKey);

    if (dwType == REG_EXPAND_SZ)
    {
        ExpandEnvironmentStringsW(szPath,
                                  lpDesktopPath,
                                  MAX_PATH);
    }
    else
    {
        wcscpy(lpDesktopPath, szPath);
    }

    DPRINT("GetDesktopPath() done\n");

    return TRUE;
}
