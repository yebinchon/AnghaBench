
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwRefCount ;
typedef char* PWSTR ;
typedef scalar_t__* PDWORD ;
typedef int PBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int DPRINT1 (char*,scalar_t__,...) ;
 scalar_t__ ERROR_SUCCESS ;
 int * HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int KEY_SET_VALUE ;
 int REG_DWORD ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExW (int *,char*,int ,int,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ RegSetValueExW (int *,char*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static
DWORD
DecrementRefCount(
    PWSTR pszSidString,
    PDWORD pdwRefCount)
{
    HKEY hProfilesKey = ((void*)0), hProfileKey = ((void*)0);
    DWORD dwRefCount = 0, dwLength, dwType;
    DWORD dwError;

    DPRINT1("DecrementRefCount(%S %p)\n",
            pszSidString, pdwRefCount);

    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProfileList",
                            0,
                            KEY_QUERY_VALUE,
                            &hProfilesKey);
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("Error: %lu\n", dwError);
        goto done;
    }

    dwError = RegOpenKeyExW(hProfilesKey,
                            pszSidString,
                            0,
                            KEY_QUERY_VALUE | KEY_SET_VALUE,
                            &hProfileKey);
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("Error: %lu\n", dwError);
        goto done;
    }


    dwLength = sizeof(dwRefCount);
    dwError = RegQueryValueExW(hProfileKey,
                               L"RefCount",
                               ((void*)0),
                               &dwType,
                               (PBYTE)&dwRefCount,
                               &dwLength);
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("Error: %lu\n", dwError);
        goto done;
    }

    dwRefCount--;

    dwLength = sizeof(dwRefCount);
    dwError = RegSetValueExW(hProfileKey,
                             L"RefCount",
                             0,
                             REG_DWORD,
                             (PBYTE)&dwRefCount,
                             dwLength);
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("Error: %lu\n", dwError);
        goto done;
    }

    if (pdwRefCount != ((void*)0))
        *pdwRefCount = dwRefCount;

done:
    if (hProfileKey != ((void*)0))
        RegCloseKey(hProfileKey);

    if (hProfilesKey != ((void*)0))
        RegCloseKey(hProfilesKey);

    return dwError;
}
