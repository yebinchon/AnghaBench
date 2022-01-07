
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int * LPBYTE ;
typedef int HMODULE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ExpandEnvironmentStringsW (int *,int *,scalar_t__) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LoadLibraryW (int *) ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_SZ ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int *) ;
 scalar_t__ lstrcmpiW (int *,char const*) ;

__attribute__((used)) static void load_mapi_provider(HKEY hkeyMail, LPCWSTR valueName, HMODULE *mapi_provider)
{
    static const WCHAR mapi32_dll[] = {'m','a','p','i','3','2','.','d','l','l',0 };

    DWORD dwType, dwLen = 0;
    LPWSTR dllPath;


    if ((RegQueryValueExW(hkeyMail, valueName, ((void*)0), &dwType, ((void*)0), &dwLen) == ERROR_SUCCESS) &&
        ((dwType == REG_SZ) || (dwType == REG_EXPAND_SZ)) && (dwLen > 0))
    {
        dllPath = HeapAlloc(GetProcessHeap(), 0, dwLen);

        if (dllPath)
        {
            RegQueryValueExW(hkeyMail, valueName, ((void*)0), ((void*)0), (LPBYTE)dllPath, &dwLen);


            if (lstrcmpiW(dllPath, mapi32_dll) != 0)
            {
                if (dwType == REG_EXPAND_SZ)
                {
                    DWORD dwExpandLen;
                    LPWSTR dllPathExpanded;


                    dwExpandLen = ExpandEnvironmentStringsW(dllPath, ((void*)0), 0);
                    dllPathExpanded = HeapAlloc(GetProcessHeap(), 0, sizeof(WCHAR) * dwExpandLen + 1);

                    if (dllPathExpanded)
                    {
                        ExpandEnvironmentStringsW(dllPath, dllPathExpanded, dwExpandLen + 1);

                        HeapFree(GetProcessHeap(), 0, dllPath);
                        dllPath = dllPathExpanded;
                    }
                }


                TRACE("loading %s\n", debugstr_w(dllPath));
                *mapi_provider = LoadLibraryW(dllPath);
            }

            HeapFree(GetProcessHeap(), 0, dllPath);
        }
    }
}
