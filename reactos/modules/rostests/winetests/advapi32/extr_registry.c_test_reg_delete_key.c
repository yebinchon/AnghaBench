
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_BADKEY ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 scalar_t__ RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int hkey_main ;
 int ok (int,char*,scalar_t__) ;
 int setup_main_key () ;
 int trace (char*) ;

__attribute__((used)) static void test_reg_delete_key(void)
{
    DWORD ret;
    HKEY key;

    ret = RegDeleteKeyA(hkey_main, ((void*)0));





    if (ret == ERROR_SUCCESS)
    {
        trace("We are probably running on NT4 or W2K as the main key is deleted,"
            " re-creating the main key\n");
        setup_main_key();
    }
    else
        ok(ret == ERROR_INVALID_PARAMETER ||
           ret == ERROR_ACCESS_DENIED ||
           ret == ERROR_BADKEY,
           "ret=%d\n", ret);

    ret = RegCreateKeyA(hkey_main, "deleteme", &key);
    ok(ret == ERROR_SUCCESS, "Could not create key, got %d\n", ret);
    ret = RegDeleteKeyA(key, "");
    ok(ret == ERROR_SUCCESS, "RegDeleteKeyA failed, got %d\n", ret);
    RegCloseKey(key);
    ret = RegOpenKeyA(hkey_main, "deleteme", &key);
    ok(ret == ERROR_FILE_NOT_FOUND, "Key was not deleted, got %d\n", ret);
    RegCloseKey(key);
}
