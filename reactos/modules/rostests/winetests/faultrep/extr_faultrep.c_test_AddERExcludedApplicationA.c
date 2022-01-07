
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BOOL ;


 int AddERExcludedApplicationA (char*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,int ,int *) ;
 int RegDeleteValueA (int ,char*) ;
 scalar_t__ RegOpenKeyA (int ,int ,int *) ;
 int SetLastError (int) ;
 scalar_t__ is_process_limited () ;
 int ok (int,char*,int,...) ;
 int regpath_exclude ;
 int regpath_root ;
 int skip (char*) ;

__attribute__((used)) static void test_AddERExcludedApplicationA(void)
{
    BOOL res;
    LONG lres;
    HKEY hroot;
    HKEY hexclude = 0;


    lres = RegCreateKeyA(HKEY_LOCAL_MACHINE, regpath_root, &hroot);
    if (lres == ERROR_ACCESS_DENIED)
    {
        skip("Not enough access rights\n");
        return;
    }

    if (!lres)
        lres = RegOpenKeyA(hroot, regpath_exclude, &hexclude);

    if (!lres)
        RegDeleteValueA(hexclude, "winetest_faultrep.exe");


    SetLastError(0xdeadbeef);
    res = AddERExcludedApplicationA(((void*)0));
    ok(!res, "got %d and 0x%x (expected FALSE)\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = AddERExcludedApplicationA("");
    ok(!res, "got %d and 0x%x (expected FALSE)\n", res, GetLastError());

    SetLastError(0xdeadbeef);

    res = AddERExcludedApplicationA("winetest_faultrep.exe");
    if (is_process_limited())
    {

        ok(!res, "AddERExcludedApplicationA should have failed got %d\n", res);
    }
    else
    {
        ok(res, "AddERExcludedApplicationA failed (le=0x%x)\n", GetLastError());


        SetLastError(0xdeadbeef);
        res = AddERExcludedApplicationA("winetest_faultrep.exe");
        ok(res, "AddERExcludedApplicationA failed (le=0x%x)\n", GetLastError());
    }


    RegDeleteValueA(hexclude, "winetest_faultrep.exe");

    RegCloseKey(hexclude);
    RegCloseKey(hroot);
}
