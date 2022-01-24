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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  APP_PATH ; 
 scalar_t__ APP_PATH_LEN ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  PROG_FILES ; 
 scalar_t__ PROG_FILES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEST_STRING1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    HKEY hkey;
    DWORD size = MAX_PATH;

    FUNC1(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &hkey);
    FUNC2(hkey, "ProgramFilesDir", NULL, NULL, (LPBYTE)PROG_FILES_ROOT, &size);
    FUNC0(hkey);

    FUNC4(PROG_FILES, PROG_FILES_ROOT + 3); /* skip C:\ */
    FUNC4(APP_PATH, PROG_FILES_ROOT);
    FUNC3(APP_PATH, TEST_STRING1);
    APP_PATH_LEN = FUNC5(APP_PATH) + 1;
}