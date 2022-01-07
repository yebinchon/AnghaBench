
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registry_key {unsigned int cSubKeys; int szName; struct registry_key* pSubKeys; } ;
typedef int HKEY ;


 int DELETE ;
 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyA (int ,int ) ;
 scalar_t__ RegOpenKeyExA (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void unregister_keys(HKEY hRootKey, const struct registry_key *keys, unsigned int numKeys) {
    HKEY hKey;
    unsigned int iKey;

    for (iKey = 0; iKey < numKeys; iKey++) {
        if (ERROR_SUCCESS == RegOpenKeyExA(hRootKey, keys[iKey].szName, 0, DELETE, &hKey)) {
            unregister_keys(hKey, keys[iKey].pSubKeys, keys[iKey].cSubKeys);
            RegCloseKey(hKey);
        }
        RegDeleteKeyA(hRootKey, keys[iKey].szName);
    }
}
