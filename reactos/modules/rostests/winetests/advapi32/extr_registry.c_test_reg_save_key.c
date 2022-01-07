
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ RegSaveKeyA (int ,char*,int *) ;
 int SE_BACKUP_NAME ;
 int SE_RESTORE_NAME ;
 int TRUE ;
 int hkey_main ;
 int ok (int,char*,scalar_t__) ;
 int set_privileges (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_reg_save_key(void)
{
    DWORD ret;

    if (!set_privileges(SE_BACKUP_NAME, TRUE) ||
        !set_privileges(SE_RESTORE_NAME, FALSE))
    {
        win_skip("Failed to set SE_BACKUP_NAME privileges, skipping tests\n");
        return;
    }

    ret = RegSaveKeyA(hkey_main, "saved_key", ((void*)0));
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    set_privileges(SE_BACKUP_NAME, FALSE);
}
