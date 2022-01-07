
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef char* LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int KEY_QUERY_VALUE ;
 int REG_MULTI_SZ ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int*,int ,int*) ;
 size_t min (int,unsigned int) ;
 int wcscpy (int*,char*) ;
 int wprintf (char*,char*,int ,...) ;

__attribute__((used)) static
unsigned
RegGetSZ(HKEY hKey, LPCWSTR lpSubKey, LPCWSTR lpValueName, LPWSTR lpBuf, DWORD cchBuf)
{
    DWORD dwBytes = cchBuf*sizeof(WCHAR), dwType = 0;
    unsigned cChars;


    if (lpSubKey && RegOpenKeyExW(hKey,
                                  lpSubKey,
                                  0,
                                  KEY_QUERY_VALUE,
                                  &hKey) != ERROR_SUCCESS)
    {
        wprintf(L"Warning! Cannot open %s. Last error: %lu.\n", lpSubKey, GetLastError());
        return 0;
    }


    if (RegQueryValueExW(hKey,
                         lpValueName,
                         ((void*)0),
                         &dwType,
                         (LPBYTE)lpBuf,
                         &dwBytes) != ERROR_SUCCESS || (dwType != REG_SZ && dwType != REG_MULTI_SZ))
    {
        wprintf(L"Warning! Cannot query %s. Last error: %lu, type: %lu.\n", lpValueName, GetLastError(), dwType);
        dwBytes = 0;
    }
    else if (dwBytes == 0)
    {
        wcscpy(lpBuf, L"N/A");
        dwBytes = 6;
    }


    if (lpSubKey)
        RegCloseKey(hKey);

    cChars = dwBytes/sizeof(WCHAR);


    lpBuf[min(cchBuf-1, cChars)] = L'\0';


    while(cChars && !lpBuf[cChars-1])
        --cChars;

    return cChars;
}
