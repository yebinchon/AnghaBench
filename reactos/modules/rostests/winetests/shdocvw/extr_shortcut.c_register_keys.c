
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registry_value {int dwType; int szName; } ;
struct registry_key {unsigned int cValues; unsigned int cSubKeys; struct registry_key* pSubKeys; struct registry_value* pValues; int szName; } ;
typedef int HKEY ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int KEY_WRITE ;
 int REG_VALUE_ADDR (struct registry_value const*) ;
 int REG_VALUE_SIZE (struct registry_value const*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int ,int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL register_keys(HKEY hRootKey, const struct registry_key *keys, unsigned int numKeys) {
    HKEY hKey;
    unsigned int iKey, iValue;

    for (iKey = 0; iKey < numKeys; iKey++) {
        if (ERROR_SUCCESS == RegCreateKeyExA(hRootKey, keys[iKey].szName, 0, ((void*)0), 0,
                                             KEY_WRITE, ((void*)0), &hKey, ((void*)0)))
        {
            for (iValue = 0; iValue < keys[iKey].cValues; iValue++) {
                const struct registry_value * value = &keys[iKey].pValues[iValue];
                if (ERROR_SUCCESS != RegSetValueExA(hKey, value->szName, 0, value->dwType,
                                                    REG_VALUE_ADDR(value), REG_VALUE_SIZE(value)))
                {
                    RegCloseKey(hKey);
                    return FALSE;
                }
            }

            if (!register_keys(hKey, keys[iKey].pSubKeys, keys[iKey].cSubKeys)) {
                RegCloseKey(hKey);
                return FALSE;
            }

            RegCloseKey(hKey);
        }
    }

    return TRUE;
}
