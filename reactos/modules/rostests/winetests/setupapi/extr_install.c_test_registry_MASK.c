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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmdline_inf_reg ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* inffile ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HKEY key;
    LONG res;
    char path[MAX_PATH];
    BOOL ret;

    /* First create a registry structure we would like to be deleted */
    FUNC6(!FUNC2(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected RegCreateKeyA to succeed\n");

    /* Doublecheck if the registry key is present */
    FUNC6(!FUNC4(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected registry key to exist\n");

    FUNC5(inffile, cmdline_inf_reg);
    FUNC8(path, "%s\\%s", CURR_DIR, inffile);
    FUNC7("DefaultInstall", 128, path);

    /* Check if the registry key is recursively deleted */
    res = FUNC4(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest", &key);
    FUNC6(res == ERROR_FILE_NOT_FOUND, "Didn't expect the registry key to exist\n");
    /* Just in case */
    if (res == ERROR_SUCCESS)
    {
        FUNC3(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest");
        FUNC3(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest");
    }
    ret = FUNC0(inffile);
    FUNC6(ret, "Expected source inf to exist, last error was %d\n", FUNC1());
}