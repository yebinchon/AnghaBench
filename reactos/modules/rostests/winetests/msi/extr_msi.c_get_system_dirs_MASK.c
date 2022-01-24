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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ COMMON_FILES_DIR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 scalar_t__ PROG_FILES_DIR ; 
 scalar_t__ PROG_FILES_DIR_NATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WINDOWS_DIR ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    HKEY hkey;
    DWORD type, size;

    if (FUNC2(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &hkey))
        return FALSE;

    size = MAX_PATH;
    if (FUNC3(hkey, "ProgramFilesDir (x86)", 0, &type, (LPBYTE)PROG_FILES_DIR, &size) &&
        FUNC3(hkey, "ProgramFilesDir", 0, &type, (LPBYTE)PROG_FILES_DIR, &size))
    {
        FUNC1(hkey);
        return FALSE;
    }
    size = MAX_PATH;
    if (FUNC3(hkey, "CommonFilesDir (x86)", 0, &type, (LPBYTE)COMMON_FILES_DIR, &size) &&
        FUNC3(hkey, "CommonFilesDir", 0, &type, (LPBYTE)COMMON_FILES_DIR, &size))
    {
        FUNC1(hkey);
        return FALSE;
    }
    size = MAX_PATH;
    if (FUNC3(hkey, "ProgramFilesDir", 0, &type, (LPBYTE)PROG_FILES_DIR_NATIVE, &size))
    {
        FUNC1(hkey);
        return FALSE;
    }
    FUNC1(hkey);
    if (!FUNC0(WINDOWS_DIR, MAX_PATH)) return FALSE;
    return TRUE;
}