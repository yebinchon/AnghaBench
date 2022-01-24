#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,char*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKCU_ClassesPath ; 
 scalar_t__ HKEY_CLASSES_ROOT ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  HKLM_ClassesPath ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  REG_OPENED_EXISTING_KEY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static
void
FUNC14(void)
{
    HKEY MachineKey, MachineSubKey;
    HKEY UserKey, UserSubKey;
    HKEY ClassesRootKey, ClassesRootSubKey;
    DWORD ErrorCode;
    DWORD Disposition;

    /* First create a subkey in HKLM */
    ErrorCode = FUNC3(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &MachineKey,
        NULL);

    if (ErrorCode == ERROR_ACCESS_DENIED)
    {
        FUNC13("Please run those tests with Administrator rights\n");
        return;
    }

    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineKey), "\n");

    /* Open it in HKCR */
    ErrorCode = FUNC5(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    FUNC11(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKLM");

    /* Try opening it in HKCU */
    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = FUNC5(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    FUNC7(ErrorCode, ERROR_FILE_NOT_FOUND);
    FUNC8(UserKey, NULL);

    /* Cleanup */
    FUNC2(ClassesRootKey);
    FUNC2(MachineKey);
    ErrorCode = FUNC0(HKEY_LOCAL_MACHINE, L"Software\\Classes", L"Apitest_HKLM");
    FUNC7(ErrorCode, ERROR_SUCCESS);

    /* Try creating in HKCR */
    ErrorCode = FUNC3(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCR",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &ClassesRootKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    FUNC11(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKCR");

    /* It should be present in HKLM */
    ErrorCode = FUNC5(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineKey), "\n");

    /* But not in HKCU */
    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = FUNC5(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    FUNC7(ErrorCode, ERROR_FILE_NOT_FOUND);
    FUNC8(UserKey, NULL);

    /* This must delete the one in HKLM */
    ErrorCode = FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKCR");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(ClassesRootKey);
    FUNC10(MachineKey);
    FUNC2(ClassesRootKey);
    FUNC2(MachineKey);

    /* Test that it is really not present anymore */
    MachineKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = FUNC5(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCR",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    FUNC7(ErrorCode, ERROR_FILE_NOT_FOUND);
    FUNC8(MachineKey, NULL);

    /* Try creating in HKCU */
    ErrorCode = FUNC3(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &UserKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserKey), "\n");

    /* Try opening it in HKCR */
    ErrorCode = FUNC5(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");

    /* And in HKLM */
    ErrorCode = FUNC5(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    FUNC7(ErrorCode, ERROR_FILE_NOT_FOUND);
    FUNC8(MachineKey, NULL);

    ErrorCode = FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(ClassesRootKey);
    FUNC10(UserKey);
    FUNC2(ClassesRootKey);
    FUNC2(UserKey);

    /* Test that it is really not present anymore */
    UserKey = (HKEY)(ULONG_PTR)0xCAFEF00DCAFEF00DULL;
    ErrorCode = FUNC5(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    FUNC7(ErrorCode, ERROR_FILE_NOT_FOUND);
    FUNC8(UserKey, NULL);

    /* Try creating in both HKLM and HKCU */
    ErrorCode = FUNC3(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM_HKCU",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &UserKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserKey), "\n");

    ErrorCode = FUNC3(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM_HKCU",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &MachineKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineKey), "\n");

    /* Open it in HKCR */
    ErrorCode = FUNC5(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    /* Verify it has opened the HKCU one */
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKLM_HKCU");

    /* Try the same thing, but this time with RegCreateKeyEx API */
    FUNC2(ClassesRootKey);
    ErrorCode = FUNC3(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM_HKCU",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &ClassesRootKey,
        &Disposition);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    /* Verify it has opened the HKCU one */
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKLM_HKCU");
    FUNC9(Disposition, REG_OPENED_EXISTING_KEY);

    /* Deleting it from HKCR first deletes the one in HKCU */
    ErrorCode = FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKLM_HKCU");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(UserKey);
    FUNC10(ClassesRootKey);
    FUNC12(MachineKey);

    FUNC2(UserKey);
    FUNC2(ClassesRootKey);

    /* This deletes it from HKLM this time */
    ErrorCode = FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKLM_HKCU");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(MachineKey);
    FUNC2(MachineKey);

    /* See what happens with subkeys */
    ErrorCode = FUNC3(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &MachineKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineKey), "\n");

    /* Open it in HKCR */
    ErrorCode = FUNC5(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    FUNC11(ClassesRootKey, &HKLM_ClassesPath, L"Apitest_HKLM");

    /* Create a corresponding subkey in HKCU */
    ErrorCode = FUNC3(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM\\HKCU_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &UserSubKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserSubKey), "\n");

    /* Open it as an HKCR subkey */
    ErrorCode = FUNC5(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootSubKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootSubKey), "\n");
    FUNC11(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKLM\\HKCU_Subkey");

    /* Try the same thing, but this time with RegCreateKeyEx API */
    FUNC2(ClassesRootSubKey);
    ErrorCode = FUNC3(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &ClassesRootSubKey,
        &Disposition);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootSubKey), "\n");
    /* Verify it has opened the HKCU one */
    FUNC11(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKLM\\HKCU_Subkey");
    FUNC9(Disposition, REG_OPENED_EXISTING_KEY);

    /* This one now exists */
    ErrorCode = FUNC5(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKLM",
        0,
        MAXIMUM_ALLOWED,
        &UserKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserKey), "\n");

    /* Delete */
    ErrorCode = FUNC4(UserKey, L"HKCU_Subkey");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(UserSubKey);
    FUNC10(ClassesRootSubKey);
    FUNC2(UserSubKey);
    FUNC2(ClassesRootSubKey);

    /* See what this deletes */
    FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKLM");
    FUNC10(UserKey);
    FUNC2(UserKey);
    FUNC12(ClassesRootKey);
    FUNC12(MachineKey);

    /* Once again */
    FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKLM");
    FUNC10(ClassesRootKey);
    FUNC10(MachineKey);
    FUNC2(ClassesRootKey);
    FUNC2(MachineKey);

    /* Same, but with HKCU first */
    ErrorCode = FUNC3(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &UserKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserKey), "\n");

    /* Open it in HKCR */
    ErrorCode = FUNC5(
        HKEY_CLASSES_ROOT,
        L"Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootKey), "\n");
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");

    /* Try creating a subkey with this HKCR handle, which points to a subkey in HKCU. */
    ErrorCode = FUNC3(
        ClassesRootKey,
        L"HKCR_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &ClassesRootSubKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootSubKey), "\n");
    /* It is in fact created in HKLM */
    FUNC11(ClassesRootSubKey, &HKLM_ClassesPath, L"Apitest_HKCU\\HKCR_Subkey");
    /* Let's see if we can delete it */
    FUNC4(ClassesRootKey, L"HKCR_Subkey");
    FUNC10(ClassesRootSubKey);
    FUNC2(ClassesRootSubKey);

    /* Create a corresponding subkey in HKLM */
    ErrorCode = FUNC3(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU\\HKLM_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &MachineSubKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineSubKey), "\n");

    /* Open it from the HKCR handle (which is still pointing to HKCU) */
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");
    ErrorCode = FUNC5(
        ClassesRootKey,
        L"HKLM_Subkey",
        0,
        MAXIMUM_ALLOWED,
        &ClassesRootSubKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootSubKey), "\n");
    FUNC11(ClassesRootSubKey, &HKLM_ClassesPath, L"Apitest_HKCU\\HKLM_Subkey");

    /* This one now exists */
    ErrorCode = FUNC5(
        HKEY_LOCAL_MACHINE,
        L"Software\\Classes\\Apitest_HKCU",
        0,
        MAXIMUM_ALLOWED,
        &MachineKey);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(MachineKey), "\n");

    /* Delete this subkey */
    ErrorCode = FUNC4(MachineKey, L"HKLM_Subkey");
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC10(MachineSubKey);
    FUNC10(ClassesRootSubKey);

    /* Create another subkey, this time from HKCU */
    ErrorCode = FUNC3(
        HKEY_CURRENT_USER,
        L"Software\\Classes\\Apitest_HKCU\\HKCU_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &UserSubKey,
        NULL);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(!FUNC1(UserSubKey), "\n");

    /* And try creating it again as a subkey of this HKCR handle (which points to HKCU). */
    FUNC11(ClassesRootKey, &HKCU_ClassesPath, L"Apitest_HKCU");
    ErrorCode = FUNC3(
        ClassesRootKey,
        L"HKCU_Subkey",
        0,
        NULL,
        0,
        MAXIMUM_ALLOWED,
        NULL,
        &ClassesRootSubKey,
        &Disposition);
    FUNC7(ErrorCode, ERROR_SUCCESS);
    FUNC6(FUNC1(ClassesRootSubKey), "\n");
    /* This time the one in HKCU is opened */
    FUNC11(ClassesRootSubKey, &HKCU_ClassesPath, L"Apitest_HKCU\\HKCU_Subkey");
    FUNC9(Disposition, REG_OPENED_EXISTING_KEY);
    /* Let's see if we can delete it */
    FUNC4(ClassesRootKey, L"HKCU_Subkey");
    FUNC10(ClassesRootSubKey);
    FUNC2(ClassesRootSubKey);
    FUNC10(UserSubKey);
    FUNC2(UserSubKey);

    FUNC2(MachineSubKey);
    FUNC2(ClassesRootSubKey);

    /* See what this deletes */
    FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    FUNC10(UserKey);
    FUNC2(UserKey);
    FUNC10(ClassesRootKey);
    FUNC2(UserKey);
    FUNC12(MachineKey);

    /* Once again */
    FUNC4(HKEY_CLASSES_ROOT, L"Apitest_HKCU");
    FUNC10(MachineKey);
    FUNC2(MachineKey);
}