
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 int LocalFree (char*) ;
 int MAX_PATH ;
 scalar_t__ MsiEnumProductsA (int,char*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 int TRUE ;
 int create_test_guid (char*,char*) ;
 int delete_key (int ,char*,int) ;
 char* get_user_sid () ;
 scalar_t__ is_wow64 ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_MsiEnumProducts(void)
{
    UINT r;
    BOOL found1, found2, found3;
    DWORD index;
    char product1[39], product2[39], product3[39], guid[39];
    char product_squashed1[33], product_squashed2[33], product_squashed3[33];
    char keypath1[MAX_PATH], keypath2[MAX_PATH], keypath3[MAX_PATH];
    char *usersid;
    HKEY key1, key2, key3;
    REGSAM access = KEY_ALL_ACCESS;

    create_test_guid(product1, product_squashed1);
    create_test_guid(product2, product_squashed2);
    create_test_guid(product3, product_squashed3);
    usersid = get_user_sid();

    if (is_wow64)
        access |= KEY_WOW64_64KEY;

    strcpy(keypath2, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\Managed\\");
    strcat(keypath2, usersid);
    strcat(keypath2, "\\Installer\\Products\\");
    strcat(keypath2, product_squashed2);

    r = RegCreateKeyExA(HKEY_LOCAL_MACHINE, keypath2, 0, ((void*)0), 0, access, ((void*)0), &key2, ((void*)0));
    if (r == ERROR_ACCESS_DENIED)
    {
        skip("Not enough rights to perform tests\n");
        LocalFree(usersid);
        return;
    }
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    strcpy(keypath1, "Software\\Classes\\Installer\\Products\\");
    strcat(keypath1, product_squashed1);

    r = RegCreateKeyExA(HKEY_LOCAL_MACHINE, keypath1, 0, ((void*)0), 0, access, ((void*)0), &key1, ((void*)0));
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    strcpy(keypath3, "Software\\Microsoft\\Installer\\Products\\");
    strcat(keypath3, product_squashed3);

    r = RegCreateKeyA(HKEY_CURRENT_USER, keypath3, &key3);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    index = 0;
    r = MsiEnumProductsA(index, guid);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = MsiEnumProductsA(index, ((void*)0));
    ok(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    index = 2;
    r = MsiEnumProductsA(index, guid);
    ok(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    index = 0;
    r = MsiEnumProductsA(index, guid);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    found1 = found2 = found3 = FALSE;
    while ((r = MsiEnumProductsA(index, guid)) == ERROR_SUCCESS)
    {
        if (!strcmp(product1, guid)) found1 = TRUE;
        if (!strcmp(product2, guid)) found2 = TRUE;
        if (!strcmp(product3, guid)) found3 = TRUE;
        index++;
    }
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %u\n", r);
    ok(found1, "product1 not found\n");
    ok(found2, "product2 not found\n");
    ok(found3, "product3 not found\n");

    delete_key(key1, "", access & KEY_WOW64_64KEY);
    delete_key(key2, "", access & KEY_WOW64_64KEY);
    RegDeleteKeyA(key3, "");
    RegCloseKey(key1);
    RegCloseKey(key2);
    RegCloseKey(key3);
    LocalFree(usersid);
}
