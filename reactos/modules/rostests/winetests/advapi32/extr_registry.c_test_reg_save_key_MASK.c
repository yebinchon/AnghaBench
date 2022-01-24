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
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 int /*<<< orphan*/  SE_RESTORE_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD ret;

    if (!FUNC2(SE_BACKUP_NAME, TRUE) ||
        !FUNC2(SE_RESTORE_NAME, FALSE))
    {
        FUNC3("Failed to set SE_BACKUP_NAME privileges, skipping tests\n");
        return;
    }

    ret = FUNC0(hkey_main, "saved_key", NULL);
    FUNC1(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    FUNC2(SE_BACKUP_NAME, FALSE);
}