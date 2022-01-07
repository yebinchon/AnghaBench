
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;


 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int REG_TEST_BASEKEYA ;
 int REG_TEST_BASESUBKEYA ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,int ,int ,int ,int *) ;
 int mru_RegDeleteTreeA (int ,int ) ;

__attribute__((used)) static void delete_reg_entries(void)
{
    HKEY hKey;

    if (RegOpenKeyExA(HKEY_CURRENT_USER, REG_TEST_BASEKEYA, 0, KEY_ALL_ACCESS,
                      &hKey))
        return;
    mru_RegDeleteTreeA(hKey, REG_TEST_BASESUBKEYA);
    RegCloseKey(hKey);
}
