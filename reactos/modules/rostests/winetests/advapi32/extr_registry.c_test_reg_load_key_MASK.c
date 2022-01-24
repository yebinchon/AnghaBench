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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 int /*<<< orphan*/  SE_RESTORE_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD ret;
    HKEY hkHandle;

    if (!FUNC4(SE_RESTORE_NAME, TRUE) ||
        !FUNC4(SE_BACKUP_NAME, FALSE))
    {
        FUNC5("Failed to set SE_RESTORE_NAME privileges, skipping tests\n");
        return;
    }

    ret = FUNC1(HKEY_LOCAL_MACHINE, "Test", "saved_key");
    FUNC3(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    FUNC4(SE_RESTORE_NAME, FALSE);

    ret = FUNC2(HKEY_LOCAL_MACHINE, "Test", &hkHandle);
    FUNC3(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    FUNC0(hkHandle);
}