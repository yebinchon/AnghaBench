
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int,int **) ;
 int TRUE ;
 int limited_user ;
 int ok (int,char*,...) ;
 int trace (char*) ;

__attribute__((used)) static void check_user_privs(void)
{
    DWORD ret;
    HKEY hkey = (HKEY)0xdeadbeef;

    ret = RegOpenKeyExA( HKEY_LOCAL_MACHINE, "Software", 0, KEY_READ|KEY_WRITE, &hkey);
    ok(ret == ERROR_SUCCESS || ret == ERROR_ACCESS_DENIED, "expected success or access denied, got %i\n", ret);
    if (ret == ERROR_SUCCESS)
    {
        ok(hkey != ((void*)0), "RegOpenKeyExA succeeded but returned NULL hkey\n");
        RegCloseKey(hkey);
    }
    else
    {
        ok(hkey == ((void*)0), "RegOpenKeyExA failed but returned hkey %p\n", hkey);
        limited_user = TRUE;
        trace("running as limited user\n");
    }
}
