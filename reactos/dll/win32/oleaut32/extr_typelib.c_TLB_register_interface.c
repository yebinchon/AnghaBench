
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int wMinorVerNum; int wMajorVerNum; int guid; } ;
struct TYPE_5__ {int guid; } ;
typedef TYPE_1__ TYPEATTR ;
typedef TYPE_2__ TLIBATTR ;
typedef int OLECHAR ;
typedef char* LPOLESTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int const BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int KEY_WRITE ;
 char* ProxyStubClsid32W ;
 char* ProxyStubClsidW ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 int RegSetValueExW (int ,char const*,int ,int ,int const*,int) ;
 int StringFromGUID2 (int *,char*,int) ;
 char* TypeLibW ;
 int get_interface_key (int *,char*) ;
 int sprintfW (char*,char const*,int ,int ) ;
 int strlenW (char*) ;

__attribute__((used)) static void TLB_register_interface(TLIBATTR *libattr, LPOLESTR name, TYPEATTR *tattr, DWORD flag)
{
    WCHAR keyName[60];
    HKEY key, subKey;

    static const WCHAR PSOA[] = {'{','0','0','0','2','0','4','2','4','-',
                                 '0','0','0','0','-','0','0','0','0','-','C','0','0','0','-',
                                 '0','0','0','0','0','0','0','0','0','0','4','6','}',0};

    get_interface_key( &tattr->guid, keyName );
    if (RegCreateKeyExW(HKEY_CLASSES_ROOT, keyName, 0, ((void*)0), 0,
                        KEY_WRITE | flag, ((void*)0), &key, ((void*)0)) == ERROR_SUCCESS)
    {
        if (name)
            RegSetValueExW(key, ((void*)0), 0, REG_SZ,
                           (BYTE *)name, (strlenW(name)+1) * sizeof(OLECHAR));

        if (RegCreateKeyExW(key, ProxyStubClsidW, 0, ((void*)0), 0,
            KEY_WRITE | flag, ((void*)0), &subKey, ((void*)0)) == ERROR_SUCCESS) {
            RegSetValueExW(subKey, ((void*)0), 0, REG_SZ,
                           (const BYTE *)PSOA, sizeof PSOA);
            RegCloseKey(subKey);
        }

        if (RegCreateKeyExW(key, ProxyStubClsid32W, 0, ((void*)0), 0,
            KEY_WRITE | flag, ((void*)0), &subKey, ((void*)0)) == ERROR_SUCCESS) {
            RegSetValueExW(subKey, ((void*)0), 0, REG_SZ,
                           (const BYTE *)PSOA, sizeof PSOA);
            RegCloseKey(subKey);
        }

        if (RegCreateKeyExW(key, TypeLibW, 0, ((void*)0), 0,
            KEY_WRITE | flag, ((void*)0), &subKey, ((void*)0)) == ERROR_SUCCESS)
        {
            WCHAR buffer[40];
            static const WCHAR fmtver[] = {'%','x','.','%','x',0 };
            static const WCHAR VersionW[] = {'V','e','r','s','i','o','n',0};

            StringFromGUID2(&libattr->guid, buffer, 40);
            RegSetValueExW(subKey, ((void*)0), 0, REG_SZ,
                           (BYTE *)buffer, (strlenW(buffer)+1) * sizeof(WCHAR));
            sprintfW(buffer, fmtver, libattr->wMajorVerNum, libattr->wMinorVerNum);
            RegSetValueExW(subKey, VersionW, 0, REG_SZ,
                           (BYTE*)buffer, (strlenW(buffer)+1) * sizeof(WCHAR));
            RegCloseKey(subKey);
        }

        RegCloseKey(key);
    }
}
