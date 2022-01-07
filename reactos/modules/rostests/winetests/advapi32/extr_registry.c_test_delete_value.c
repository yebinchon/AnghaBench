
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int BYTE ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int REG_SZ ;
 scalar_t__ RegDeleteValueA (int ,char*) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,char*,int ,int ,int const*,int) ;
 scalar_t__ broken (int) ;
 int hkey_main ;
 int memset (char*,char,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_delete_value(void)
{
    LONG res;
    char longname[401];

    res = RegSetValueExA( hkey_main, "test", 0, REG_SZ, (const BYTE*)"value", 6 );
    ok(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = RegQueryValueExA( hkey_main, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = RegDeleteValueA( hkey_main, "test" );
    ok(res == ERROR_SUCCESS, "expect ERROR_SUCCESS, got %i\n", res);

    res = RegQueryValueExA( hkey_main, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(res == ERROR_FILE_NOT_FOUND, "expect ERROR_FILE_NOT_FOUND, got %i\n", res);

    res = RegDeleteValueA( hkey_main, "test" );
    ok(res == ERROR_FILE_NOT_FOUND, "expect ERROR_FILE_NOT_FOUND, got %i\n", res);

    memset(longname, 'a', 400);
    longname[400] = 0;
    res = RegDeleteValueA( hkey_main, longname );
    ok(res == ERROR_FILE_NOT_FOUND || broken(res == ERROR_MORE_DATA),
       "expect ERROR_FILE_NOT_FOUND, got %i\n", res);


    res = RegSetValueExA(hkey_main, "", 0, REG_SZ, (const BYTE *)"value", 6);
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = RegQueryValueExA(hkey_main, "", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = RegDeleteValueA(hkey_main, "" );
    ok(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", res);

    res = RegQueryValueExA(hkey_main, "", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(res == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", res);
}
