
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int securityPkgNames ;
typedef char WCHAR ;
typedef int PBYTE ;
typedef scalar_t__ LSTATUS ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int MAX_PATH ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;
 int SECUR32_initKerberosSP () ;
 int SECUR32_initNTLMSP () ;
 int SECUR32_initNegotiateSP () ;
 int _tryLoadProvider (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ lstrlenW (char*) ;
 int securityProvidersKeyW ;
 int securityProvidersW ;

__attribute__((used)) static void SECUR32_initializeProviders(void)
{
    HKEY key;
    LSTATUS apiRet;


    apiRet = RegOpenKeyExW(HKEY_LOCAL_MACHINE, securityProvidersKeyW, 0,
     KEY_READ, &key);
    if (apiRet == ERROR_SUCCESS)
    {
        WCHAR securityPkgNames[MAX_PATH];
        DWORD size = sizeof(securityPkgNames), type;

        apiRet = RegQueryValueExW(key, securityProvidersW, ((void*)0), &type,
         (PBYTE)securityPkgNames, &size);
        if (apiRet == ERROR_SUCCESS && type == REG_SZ)
        {
            WCHAR *ptr;

            size = size / sizeof(WCHAR);
            for (ptr = securityPkgNames;
              ptr < securityPkgNames + size; )
            {
                WCHAR *comma;

                for (comma = ptr; *comma && *comma != ','; comma++)
                    ;
                if (*comma == ',')
                    *comma = '\0';
                for (; *ptr && isspace(*ptr) && ptr < securityPkgNames + size;
                 ptr++)
                    ;
                if (*ptr)
                    _tryLoadProvider(ptr);
                ptr += lstrlenW(ptr) + 1;
            }
        }
        RegCloseKey(key);
    }
}
