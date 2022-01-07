
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegLoadKeyA (int ,char*,char*) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int SE_BACKUP_NAME ;
 int SE_RESTORE_NAME ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int set_privileges (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_reg_load_key(void)
{
    DWORD ret;
    HKEY hkHandle;

    if (!set_privileges(SE_RESTORE_NAME, TRUE) ||
        !set_privileges(SE_BACKUP_NAME, FALSE))
    {
        win_skip("Failed to set SE_RESTORE_NAME privileges, skipping tests\n");
        return;
    }

    ret = RegLoadKeyA(HKEY_LOCAL_MACHINE, "Test", "saved_key");
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    set_privileges(SE_RESTORE_NAME, FALSE);

    ret = RegOpenKeyA(HKEY_LOCAL_MACHINE, "Test", &hkHandle);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    RegCloseKey(hkHandle);
}
