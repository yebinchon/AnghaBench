
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_KEY_DELETED ;
 int HKEY_CURRENT_USER ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 scalar_t__ RegEnumKeyA (int ,int ,char*,int) ;
 scalar_t__ RegEnumValueA (int ,int ,char*,int*,int *,int*,int ,int ) ;
 scalar_t__ RegFlushKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 scalar_t__ RegSetValueExA (int ,char*,int ,int ,int const*,int) ;
 int delete_key (int ) ;
 int hkey_main ;
 int ok (int,char*,scalar_t__) ;
 int setup_main_key () ;

__attribute__((used)) static void test_deleted_key(void)
{
    HKEY hkey, hkey2;
    char value[20];
    DWORD val_count, type;
    LONG res;


    RegOpenKeyA( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey );

    delete_key( hkey_main );

    val_count = sizeof(value);
    type = 0;
    res = RegEnumValueA( hkey, 0, value, &val_count, ((void*)0), &type, 0, 0 );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = RegEnumKeyA( hkey, 0, value, sizeof(value) );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    val_count = sizeof(value);
    type = 0;
    res = RegQueryValueExA( hkey, "test", ((void*)0), &type, (BYTE *)value, &val_count );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = RegSetValueExA( hkey, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    res = RegOpenKeyA( hkey, "test", &hkey2 );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);
    if (res == 0)
        RegCloseKey( hkey2 );

    res = RegCreateKeyA( hkey, "test", &hkey2 );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);
    if (res == 0)
        RegCloseKey( hkey2 );

    res = RegFlushKey( hkey );
    ok(res == ERROR_KEY_DELETED, "expect ERROR_KEY_DELETED, got %i\n", res);

    RegCloseKey( hkey );

    setup_main_key();
}
