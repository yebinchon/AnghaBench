#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szText ;
typedef  int /*<<< orphan*/  szName ;
typedef  char WCHAR ;
struct TYPE_5__ {struct TYPE_5__* pNext; void* szBindName; void* szHelpText; void* szDisplayName; void* szId; scalar_t__ dwCharacteristics; int /*<<< orphan*/  InstanceId; int /*<<< orphan*/  ClassGUID; } ;
typedef  TYPE_1__ NetCfgComponentItem ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int REG_DWORD ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*) ; 
 int FUNC11 (char*) ; 

HRESULT
FUNC12(HKEY hKey, const GUID * pGuid, NetCfgComponentItem ** pHead)
{
    DWORD dwIndex = 0;
    DWORD dwSize;
    DWORD dwType;
    WCHAR szName[100];
    WCHAR szText[100];
    HKEY hSubKey, hNDIKey;
    NetCfgComponentItem * pLast = NULL, *pCurrent;

    *pHead = NULL;
    do
    {
        szText[0] = L'\0';

        dwSize = sizeof(szName)/sizeof(WCHAR);
        if (FUNC6(hKey, dwIndex++, szName, &dwSize, NULL, NULL, NULL, NULL) == ERROR_SUCCESS)
        {
            pCurrent = FUNC1(sizeof(NetCfgComponentItem));
            if (!pCurrent)
                return E_OUTOFMEMORY;

            FUNC9(pCurrent, sizeof(NetCfgComponentItem));
            FUNC2(&pCurrent->ClassGUID, pGuid, sizeof(GUID));

            if (FUNC3(FUNC0(szName, &pCurrent->InstanceId)))
            {
                /// ReactOS tcpip guid is not yet generated
                //CoTaskMemFree(pCurrent);
                //return E_FAIL;
            }
            if (FUNC7(hKey, szName, 0, KEY_READ, &hSubKey) == ERROR_SUCCESS)
            {
                /* retrieve Characteristics */
                dwSize = sizeof(DWORD);

                FUNC8(hSubKey, L"Characteristics", NULL, &dwType, (LPBYTE)&pCurrent->dwCharacteristics, &dwSize);
                if (dwType != REG_DWORD)
                    pCurrent->dwCharacteristics = 0;

                /* retrieve ComponentId */
                dwSize = sizeof(szText);
                if (FUNC8(hSubKey, L"ComponentId", NULL, &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                {
                    if (dwType == REG_SZ)
                    {
                        szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                        pCurrent->szId = FUNC1((FUNC11(szText)+1)* sizeof(WCHAR));
                        if (pCurrent->szId)
                            FUNC10(pCurrent->szId, szText);
                    }
                }

                /* retrieve Description */
                dwSize = sizeof(szText);
                if (FUNC8(hSubKey, L"Description", NULL, &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                {
                    if (dwType == REG_SZ)
                    {
                        szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                        pCurrent->szDisplayName = FUNC1((FUNC11(szText)+1)* sizeof(WCHAR));
                        if (pCurrent->szDisplayName)
                            FUNC10(pCurrent->szDisplayName, szText);
                    }
                }

                if (FUNC7(hSubKey, L"NDI", 0, KEY_READ, &hNDIKey) == ERROR_SUCCESS)
                {
                    /* retrieve HelpText */
                    dwSize = sizeof(szText);
                    if (FUNC8(hNDIKey, L"HelpText", NULL, &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                    {
                        if (dwType == REG_SZ)
                        {
                            szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                            pCurrent->szHelpText = FUNC1((FUNC11(szText)+1)* sizeof(WCHAR));
                            if (pCurrent->szHelpText)
                                FUNC10(pCurrent->szHelpText, szText);
                        }
                    }

                    /* retrieve Service */
                    dwSize = sizeof(szText);
                    if (FUNC8(hNDIKey, L"Service", NULL, &dwType, (LPBYTE)szText, &dwSize) == ERROR_SUCCESS)
                    {
                        if (dwType == REG_SZ)
                        {
                            szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                            pCurrent->szBindName = FUNC1((FUNC11(szText)+1)* sizeof(WCHAR));
                            if (pCurrent->szBindName)
                                FUNC10(pCurrent->szBindName, szText);
                        }
                    }
                    FUNC5(hNDIKey);
                }
                FUNC5(hSubKey);

                FUNC4(pCurrent);

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