
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ DeleteSubKey (scalar_t__,char*,char*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int HKCU_ClassesPath ;
 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 int HKLM_ClassesPath ;
 int IS_HKCR (scalar_t__) ;
 int MAXIMUM_ALLOWED ;
 int REG_OPENED_EXISTING_KEY ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegCreateKeyExW (scalar_t__,char*,int ,int *,int ,int ,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ RegDeleteKeyW (scalar_t__,char*) ;
 scalar_t__ RegOpenKeyExW (scalar_t__,char*,int ,int ,scalar_t__*) ;
 int ok (int,char*) ;
 int ok_dec (scalar_t__,int ) ;
 int ok_hdl (scalar_t__,int *) ;
 int ok_hex (scalar_t__,int ) ;
 int ok_key_deleted (scalar_t__) ;
 int ok_key_name (scalar_t__,int *,char*) ;
 int ok_key_not_deleted (scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static
void
Test_CreateOpenKey(void)
{
    HKEY MachineKey, MachineSubKey;
    HKEY UserKey, UserSubKey;
    HKEY ClassesRootKey, ClassesRootSubKey;
    DWORD ErrorCode;
    DWORD Disposition;


    ErrorCode = RegCreateKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &MachineKey,
        ((void*)0));

    if (ErrorCode == ERROR_ACCESS_DENIED)
    {
        win_skip("Please run those tests with Administrator rights\n");
        return;
    }

    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineKey), "\n");


    ErrorCode = RegOpenKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");
    ok_key_name(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKLM");


    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = RegOpenKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    ok_dec(ErrorCode, ERROR_FILE_NOT_FOUND);
    ok_hdl(UserKey, ((void*)0));


    RegCloseKey(ClassesRootKey);
    RegCloseKey(MachineKey);
    ErrorCode = DeleteSubKey(HKEY_LOCAL_MACHINE, L"Software\\Classes", L"Apitest_HKLM");
    ok_dec(ErrorCode, ERROR_SUCCESS);


    ErrorCode = RegCreateKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCR",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &ClassesRootKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");
    ok_key_name(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKCR");


    ErrorCode = RegOpenKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineKey), "\n");


    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = RegOpenKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    ok_dec(ErrorCode, ERROR_FILE_NOT_FOUND);
    ok_hdl(UserKey, ((void*)0));


    ErrorCode = RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKCR");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(ClassesRootKey);
    ok_key_deleted(MachineKey);
    RegCloseKey(ClassesRootKey);
    RegCloseKey(MachineKey);


    MachineKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = RegOpenKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    ok_dec(ErrorCode, ERROR_FILE_NOT_FOUND);
    ok_hdl(MachineKey, ((void*)0));


    ErrorCode = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &UserKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserKey), "\n");


    ErrorCode = RegOpenKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");
    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");


    ErrorCode = RegOpenKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    ok_dec(ErrorCode, ERROR_FILE_NOT_FOUND);
    ok_hdl(MachineKey, ((void*)0));

    ErrorCode = RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(ClassesRootKey);
    ok_key_deleted(UserKey);
    RegCloseKey(ClassesRootKey);
    RegCloseKey(UserKey);


    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = RegOpenKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    ok_dec(ErrorCode, ERROR_FILE_NOT_FOUND);
    ok_hdl(UserKey, ((void*)0));


    ErrorCode = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM_HKCU",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &UserKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserKey), "\n");

    ErrorCode = RegCreateKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM_HKCU",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &MachineKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineKey), "\n");


    ErrorCode = RegOpenKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");

    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKLM_HKCU");


    RegCloseKey(ClassesRootKey);
    ErrorCode = RegCreateKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM_HKCU",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &ClassesRootKey,
        &Disposition);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");

    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKLM_HKCU");
    ok_hex(Disposition, REG_OPENED_EXISTING_KEY);


    ErrorCode = RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKLM_HKCU");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(UserKey);
    ok_key_deleted(ClassesRootKey);
    ok_key_not_deleted(MachineKey);

    RegCloseKey(UserKey);
    RegCloseKey(ClassesRootKey);


    ErrorCode = RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKLM_HKCU");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(MachineKey);
    RegCloseKey(MachineKey);


    ErrorCode = RegCreateKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &MachineKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineKey), "\n");


    ErrorCode = RegOpenKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");
    ok_key_name(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKLM");


    ErrorCode = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM\\HKCU_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &UserSubKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserSubKey), "\n");


    ErrorCode = RegOpenKeyExW(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootSubKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootSubKey), "\n");
    ok_key_name(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKLM\\HKCU_Subkey");


    RegCloseKey(ClassesRootSubKey);
    ErrorCode = RegCreateKeyExW(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &ClassesRootSubKey,
        &Disposition);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootSubKey), "\n");

    ok_key_name(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKLM\\HKCU_Subkey");
    ok_hex(Disposition, REG_OPENED_EXISTING_KEY);


    ErrorCode = RegOpenKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserKey), "\n");


    ErrorCode = RegDeleteKeyW(UserKey, L"HKCU_Subkey");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(UserSubKey);
    ok_key_deleted(ClassesRootSubKey);
    RegCloseKey(UserSubKey);
    RegCloseKey(ClassesRootSubKey);


    RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKLM");
    ok_key_deleted(UserKey);
    RegCloseKey(UserKey);
    ok_key_not_deleted(ClassesRootKey);
    ok_key_not_deleted(MachineKey);


    RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKLM");
    ok_key_deleted(ClassesRootKey);
    ok_key_deleted(MachineKey);
    RegCloseKey(ClassesRootKey);
    RegCloseKey(MachineKey);


    ErrorCode = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &UserKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserKey), "\n");


    ErrorCode = RegOpenKeyExW(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootKey), "\n");
    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");


    ErrorCode = RegCreateKeyExW(
        ClassesRootKey,
        L"HKCR_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &ClassesRootSubKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootSubKey), "\n");

    ok_key_name(ClassesRootSubKey, &HKLM_ClassesPath, L"Apitest_HKCU\\HKCR_Subkey");

    RegDeleteKeyW(ClassesRootKey, L"HKCR_Subkey");
    ok_key_deleted(ClassesRootSubKey);
    RegCloseKey(ClassesRootSubKey);


    ErrorCode = RegCreateKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU\\HKLM_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &MachineSubKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineSubKey), "\n");


    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");
    ErrorCode = RegOpenKeyExW(
        ClassesRootKey,
        L"HKLM_Subkey",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootSubKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootSubKey), "\n");
    ok_key_name(ClassesRootSubKey, &HKLM_ClassesPath, L"Apitest_HKCU\\HKLM_Subkey");


    ErrorCode = RegOpenKeyExW(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(MachineKey), "\n");


    ErrorCode = RegDeleteKeyW(MachineKey, L"HKLM_Subkey");
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok_key_deleted(MachineSubKey);
    ok_key_deleted(ClassesRootSubKey);


    ErrorCode = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU\\HKCU_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &UserSubKey,
        ((void*)0));
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(!IS_HKCR(UserSubKey), "\n");


    ok_key_name(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");
    ErrorCode = RegCreateKeyExW(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        ((void*)0),
        0,
        MAXIMUM_ALLOWED,
        ((void*)0),
        &ClassesRootSubKey,
        &Disposition);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(ClassesRootSubKey), "\n");

    ok_key_name(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKCU\\HKCU_Subkey");
    ok_hex(Disposition, REG_OPENED_EXISTING_KEY);

    RegDeleteKeyW(ClassesRootKey, L"HKCU_Subkey");
    ok_key_deleted(ClassesRootSubKey);
    RegCloseKey(ClassesRootSubKey);
    ok_key_deleted(UserSubKey);
    RegCloseKey(UserSubKey);

    RegCloseKey(MachineSubKey);
    RegCloseKey(ClassesRootSubKey);


    RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    ok_key_deleted(UserKey);
    RegCloseKey(UserKey);
    ok_key_deleted(ClassesRootKey);
    RegCloseKey(UserKey);
    ok_key_not_deleted(MachineKey);


    RegDeleteKeyW(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    ok_key_deleted(MachineKey);
    RegCloseKey(MachineKey);
}
