
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {char* szBindName; int * pszBinding; } ;
typedef TYPE_1__ NetCfgComponentItem ;
typedef int * LPBYTE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;


 int * CoTaskMemAlloc (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_OUTOFMEMORY ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int RegQueryValueExW (int ,char*,int *,int *,int *,int *) ;
 int S_OK ;
 int wcscat (int *,char*) ;
 int wcscpy (int *,char*) ;

HRESULT
ReadBindingString(
    NetCfgComponentItem *Item)
{
    WCHAR szBuffer[200];
    HKEY hKey;
    DWORD dwType, dwSize;

    if (Item == ((void*)0) || Item->szBindName == ((void*)0))
        return S_OK;

    wcscpy(szBuffer, L"SYSTEM\\CurrentControlSet\\Services\\");
    wcscat(szBuffer, Item->szBindName);
    wcscat(szBuffer, L"\\Linkage");

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, szBuffer, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        dwSize = 0;
        RegQueryValueExW(hKey, L"Bind", ((void*)0), &dwType, ((void*)0), &dwSize);

        if (dwSize != 0)
        {
            Item->pszBinding = CoTaskMemAlloc(dwSize);
            if (Item->pszBinding == ((void*)0))
                return E_OUTOFMEMORY;

            RegQueryValueExW(hKey, L"Bind", ((void*)0), &dwType, (LPBYTE)Item->pszBinding, &dwSize);
        }

        RegCloseKey(hKey);
    }

    return S_OK;
}
