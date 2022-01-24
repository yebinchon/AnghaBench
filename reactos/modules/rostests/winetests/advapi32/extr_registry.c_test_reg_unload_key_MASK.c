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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 int /*<<< orphan*/  SE_RESTORE_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD ret;

    if (!FUNC3(SE_RESTORE_NAME, TRUE) ||
        !FUNC3(SE_BACKUP_NAME, FALSE))
    {
        FUNC4("Failed to set SE_RESTORE_NAME privileges, skipping tests\n");
        return;
    }

    ret = FUNC1(HKEY_LOCAL_MACHINE, "Test");
    FUNC2(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    FUNC3(SE_RESTORE_NAME, FALSE);

    FUNC0("saved_key");
    FUNC0("saved_key.LOG");
}