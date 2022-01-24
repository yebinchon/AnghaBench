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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  test_dll_path ; 

__attribute__((used)) static BOOL FUNC7(void)
{
    char sys_dir[MAX_PATH+15];
    char temp_path[MAX_PATH];

    if (FUNC1(sys_dir, MAX_PATH) == 0)
    {
        FUNC6("Failed to get system directory. Skipping certificate/PE image tests.\n");
        return FALSE;
    }

    if (sys_dir[FUNC5(sys_dir) - 1] != '\\')
        FUNC4(sys_dir, "\\");

    FUNC4(sys_dir, "imagehlp.dll");

    /* Copy DLL to a temp file */
    FUNC3(MAX_PATH, temp_path);
    FUNC2(temp_path, "img", 0, test_dll_path);

    if (FUNC0(sys_dir, test_dll_path, FALSE) == 0)
    {
        FUNC6("Unable to create copy of imagehlp.dll for tests.\n");
        return FALSE;
    }

    return TRUE;
}