
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int szText ;
typedef int szName ;
typedef char WCHAR ;
struct TYPE_5__ {struct TYPE_5__* pNext; void* szBindName; void* szHelpText; void* szDisplayName; void* szId; scalar_t__ dwCharacteristics; int InstanceId; int ClassGUID; } ;
typedef TYPE_1__ NetCfgComponentItem ;
typedef int LPBYTE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD ;


 int CLSIDFromString (char*,int *) ;
 void* CoTaskMemAlloc (int) ;
 int CopyMemory (int *,int const*,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int KEY_READ ;
 int REG_DWORD ;
 int REG_SZ ;
 int ReadBindingString (TYPE_1__*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int ,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int*,int ,int*) ;
 int S_OK ;
 scalar_t__ TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int wcscpy (void*,char*) ;
 int wcslen (char*) ;

HRESULT
EnumClientServiceProtocol(HKEY hKey, const GUID * pGuid, NetCfgComponentItem ** pHead)
{
    DWORD dwIndex = 0;
    DWORD dwSize;
    DWORD dwType;
    WCHAR szName[100];
    WCHAR szText[100];
    HKEY hSubKey, hNDIKey;
    NetCfgComponentItem * pLast = ((void*)0), *pCurrent;

    *pHead = ((void*)0);
    do
    {
        szText[0] = L'\0';

        dwSize = sizeof(szName)/sizeof(WCHAR);
        if (RegEnumKeyExW(hKey, dwIndex++, szName, &dwSize, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) == ERROR_SUCCESS)
        {
            pCurrent = CoTaskMemAlloc(sizeof(NetCfgComponentItem));
            if (!pCurrent)
                return E_OUTOFMEMORY;

            ZeroMemory(pCurrent, sizeof(NetCfgComponentItem));
            CopyMemory(&pCurrent->ClassGUID, pGuid, sizeof(GUID));

            if (FAILED(CLSIDFromString(szName, &pCurrent->InstanceId)))
            {



            }
            if (RegOpenKeyExW(hKey, szName, 0, KEY_READ, &hSubKey) == ERROR_SUCCESS)
            {

                dwSize = sizeof(DWORD);

                RegQueryValueExW(hSubKey, L"Characteristics", ((void*)0), &dwType, (LPBYTE)&pCurrent->dwCharacteristics, &dwSize);
                if (dwType != REG_DWORD)
                    pCurrent->dwCharacteristics = 0;


                dwSize = sizeof(szText);
                if (RegQueryValueExW(hSubKey, L"ComponentId", ((void*)0), &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                {
                    if (dwType == REG_SZ)
                    {
                        szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                        pCurrent->szId = CoTaskMemAlloc((wcslen(szText)+1)* sizeof(WCHAR));
                        if (pCurrent->szId)
                            wcscpy(pCurrent->szId, szText);
                    }
                }


                dwSize = sizeof(szText);
                if (RegQueryValueExW(hSubKey, L"Description", ((void*)0), &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                {
                    if (dwType == REG_SZ)
                    {
                        szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                        pCurrent->szDisplayName = CoTaskMemAlloc((wcslen(szText)+1)* sizeof(WCHAR));
                        if (pCurrent->szDisplayName)
                            wcscpy(pCurrent->szDisplayName, szText);
                    }
                }

                if (RegOpenKeyExW(hSubKey, L"NDI", 0, KEY_READ, &hNDIKey) == ERROR_SUCCESS)
                {

                    dwSize = sizeof(szText);
                    if (RegQueryValueExW(hNDIKey, L"HelpText", ((void*)0), &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                    {
                        if (dwType == REG_SZ)
                        {
                            szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                            pCurrent->szHelpText = CoTaskMemAlloc((wcslen(szText)+1)* sizeof(WCHAR));
                            if (pCurrent->szHelpText)
                                wcscpy(pCurrent->szHelpText, szText);
                        }
                    }


                    dwSize = sizeof(szText);
                    if (RegQueryValueExW(hNDIKey, L"Service", ((void*)0), &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                    {
                        if (dwType == REG_SZ)
                        {
                            szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                            pCurrent->szBindName = CoTaskMemAlloc((wcslen(szText)+1)* sizeof(WCHAR));
                            if (pCurrent->szBindName)
                                wcscpy(pCurrent->szBindName, szText);
                        }
                    }
                    RegCloseKey(hNDIKey);
                }
                RegCloseKey(hSubKey);

                ReadBindingString(pCurrent);

                if (!pLast)
                    *pHead = pCurrent;
                else
                    pLast->pNext = pCurrent;

                pLast = pCurrent;
            }
        }
        else
           break;

    }while(TRUE);
    return S_OK;
}
