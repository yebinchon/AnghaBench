
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int NetCfgComponentItem ;
typedef char* LPOLESTR ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;


 int CoTaskMemFree (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int EnumClientServiceProtocol (int ,int const*,int **) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int StringFromCLSID (int const*,char**) ;
 int swprintf (int *,char*,char*) ;

HRESULT
EnumerateNetworkComponent(
    const GUID *pGuid, NetCfgComponentItem ** pHead)
{
    HKEY hKey;
    LPOLESTR pszGuid;
    HRESULT hr;
    WCHAR szName[150];

    hr = StringFromCLSID(pGuid, &pszGuid);
    if (SUCCEEDED(hr))
    {
        swprintf(szName, L"SYSTEM\\CurrentControlSet\\Control\\Network\\%s", pszGuid);
        if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, szName, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
        {
            hr = EnumClientServiceProtocol(hKey, pGuid, pHead);
            RegCloseKey(hKey);
        }
        CoTaskMemFree(pszGuid);
    }
    return hr;
}
