
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,int *,int ,scalar_t__*,int *,scalar_t__*) ;

__attribute__((used)) static DWORD
RegReadStringA(HKEY hKey,
               LPSTR lpValueName,
               LPSTR *lpValue)
{
    DWORD dwError;
    DWORD dwSize;
    DWORD dwType;

    *lpValue = ((void*)0);

    dwSize = 0;
    dwError = RegQueryValueExA(hKey,
                               lpValueName,
                               0,
                               &dwType,
                               ((void*)0),
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    *lpValue = HeapAlloc(GetProcessHeap(), 0, dwSize);
    if (*lpValue == ((void*)0))
        return ERROR_NOT_ENOUGH_MEMORY;

    dwError = RegQueryValueExA(hKey,
                               lpValueName,
                               0,
                               &dwType,
                               (LPBYTE)*lpValue,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        HeapFree(GetProcessHeap(), 0, *lpValue);
        *lpValue = ((void*)0);
    }

    return dwError;
}
