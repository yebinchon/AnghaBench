
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int * LPWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int DPRINT1 (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int LPTR ;
 int * LocalAlloc (int ,scalar_t__) ;
 int LocalFree (int *) ;
 scalar_t__ REG_EXPAND_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,int *,scalar_t__*,int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *) ;
 int SetUserEnvironmentVariable (int *,int *,int *,int) ;
 int TRUE ;

__attribute__((used)) static
BOOL
SetSystemEnvironment(PWSTR* Environment)
{
    LONG Error;
    HKEY hEnvKey;
    DWORD dwValues;
    DWORD dwMaxValueNameLength;
    DWORD dwMaxValueDataLength;
    DWORD dwValueNameLength;
    DWORD dwValueDataLength;
    DWORD dwType;
    DWORD i;
    LPWSTR lpValueName;
    LPWSTR lpValueData;

    Error = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                          L"SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Environment",
                          0,
                          KEY_QUERY_VALUE,
                          &hEnvKey);
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegOpenKeyExW() failed (Error %ld)\n", Error);
        return FALSE;
    }

    Error = RegQueryInfoKey(hEnvKey,
                            ((void*)0),
                            ((void*)0),
                            ((void*)0),
                            ((void*)0),
                            ((void*)0),
                            ((void*)0),
                            &dwValues,
                            &dwMaxValueNameLength,
                            &dwMaxValueDataLength,
                            ((void*)0),
                            ((void*)0));
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegQueryInforKey() failed (Error %ld)\n", Error);
        RegCloseKey(hEnvKey);
        return FALSE;
    }

    if (dwValues == 0)
    {
        RegCloseKey(hEnvKey);
        return TRUE;
    }


    dwMaxValueNameLength++;
    lpValueName = LocalAlloc(LPTR, dwMaxValueNameLength * sizeof(WCHAR));
    if (lpValueName == ((void*)0))
    {
        RegCloseKey(hEnvKey);
        return FALSE;
    }

    lpValueData = LocalAlloc(LPTR, dwMaxValueDataLength);
    if (lpValueData == ((void*)0))
    {
        LocalFree(lpValueName);
        RegCloseKey(hEnvKey);
        return FALSE;
    }


    for (i = 0; i < dwValues; i++)
    {
        dwValueNameLength = dwMaxValueNameLength;
        dwValueDataLength = dwMaxValueDataLength;

        Error = RegEnumValueW(hEnvKey,
                              i,
                              lpValueName,
                              &dwValueNameLength,
                              ((void*)0),
                              &dwType,
                              (LPBYTE)lpValueData,
                              &dwValueDataLength);
        if (Error == ERROR_SUCCESS)
        {

            SetUserEnvironmentVariable(Environment,
                                       lpValueName,
                                       lpValueData,
                                       (dwType == REG_EXPAND_SZ));
        }
        else
        {
            LocalFree(lpValueData);
            LocalFree(lpValueName);
            RegCloseKey(hEnvKey);

            return FALSE;
        }
    }

    LocalFree(lpValueData);
    LocalFree(lpValueName);
    RegCloseKey(hEnvKey);

    return TRUE;
}
