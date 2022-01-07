
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WNetProviderTable ;
typedef int WNetProvider ;
typedef char WCHAR ;
struct TYPE_2__ {scalar_t__ numAllocated; scalar_t__* entireNetwork; } ;
typedef char* PWSTR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef int HINSTANCE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int IDS_ENTIRENETWORK ;
 int KEY_ALL_ACCESS ;
 int KEY_READ ;
 int LoadStringW (int ,int ,int ,int ) ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,char*,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenCurrentUser (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,scalar_t__*,int *,scalar_t__*) ;
 int TRACE (char*,...) ;
 int _restoreSavedConnection (int ,char*) ;
 int _tryLoadProvider (char*) ;
 char* debugstr_w (char*) ;
 int memcpy (scalar_t__*,int ,int) ;
 TYPE_1__* providerTable ;
 char* wcschr (char*,char) ;

void wnetInit(HINSTANCE hInstDll)
{
    static const WCHAR providerOrderKey[] = { 'S','y','s','t','e','m','\\',
     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
     'C','o','n','t','r','o','l','\\',
     'N','e','t','w','o','r','k','P','r','o','v','i','d','e','r','\\',
     'O','r','d','e','r',0 };
     static const WCHAR providerOrder[] = { 'P','r','o','v','i','d','e','r',
      'O','r','d','e','r',0 };
    HKEY hKey;

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, providerOrderKey, 0, KEY_READ, &hKey)
     == ERROR_SUCCESS)
    {
        DWORD size = 0;

        RegQueryValueExW(hKey, providerOrder, ((void*)0), ((void*)0), ((void*)0), &size);
        if (size)
        {
            PWSTR providers = HeapAlloc(GetProcessHeap(), 0, size);

            if (providers)
            {
                DWORD type;

                if (RegQueryValueExW(hKey, providerOrder, ((void*)0), &type,
                 (LPBYTE)providers, &size) == ERROR_SUCCESS && type == REG_SZ)
                {
                    PWSTR ptr;
                    DWORD numToAllocate;

                    TRACE("provider order is %s\n", debugstr_w(providers));


                    for (ptr = providers, numToAllocate = 1; ptr; )
                    {
                        ptr = wcschr(ptr, ',');
                        if (ptr) {
                            numToAllocate++;
                            ptr++;
                        }
                    }
                    providerTable =
                     HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                     sizeof(WNetProviderTable)
                     + (numToAllocate - 1) * sizeof(WNetProvider));
                    if (providerTable)
                    {
                        PWSTR ptrPrev;
                        int entireNetworkLen;
                        LPCWSTR stringresource;

                        entireNetworkLen = LoadStringW(hInstDll,
                         IDS_ENTIRENETWORK, (LPWSTR)&stringresource, 0);
                        providerTable->entireNetwork = HeapAlloc(
                         GetProcessHeap(), 0, (entireNetworkLen + 1) *
                         sizeof(WCHAR));
                        if (providerTable->entireNetwork)
                        {
                            memcpy(providerTable->entireNetwork, stringresource, entireNetworkLen*sizeof(WCHAR));
                            providerTable->entireNetwork[entireNetworkLen] = 0;
                        }
                        providerTable->numAllocated = numToAllocate;
                        for (ptr = providers; ptr; )
                        {
                            ptrPrev = ptr;
                            ptr = wcschr(ptr, ',');
                            if (ptr)
                                *ptr++ = '\0';
                            _tryLoadProvider(ptrPrev);
                        }
                    }
                }
                HeapFree(GetProcessHeap(), 0, providers);
            }
        }
        RegCloseKey(hKey);
    }
}
