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
typedef  int /*<<< orphan*/  HINF ;
typedef  int BOOL ;

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  INF_STYLE_WIN4 ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPINST_REGISTRY ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmdline_inf_reg ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* inffile ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    char path[MAX_PATH];
    HINF infhandle;
    HKEY key;
    LONG res;
    BOOL ret;

    /* First create a registry structure we would like to be deleted */
    FUNC10(!FUNC2(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected RegCreateKeyA to succeed\n");

    /* Doublecheck if the registry key is present */
    FUNC10(!FUNC4(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected registry key to exist\n");

    FUNC9(inffile, cmdline_inf_reg);
    FUNC11(path, "%s\\%s", CURR_DIR, inffile);
    infhandle = FUNC8(path, NULL, INF_STYLE_WIN4, NULL);
    FUNC5(0xdeadbeef);
    ret = FUNC7(NULL, infhandle, "DefaultInstall", SPINST_REGISTRY, key,
        "A:\\", 0, NULL, NULL, NULL, NULL);
    FUNC10(ret, "Unexpected failure\n");
    FUNC10(FUNC1() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %08x\n", FUNC1());

    /* Check if the registry key is recursively deleted */
    res = FUNC4(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest", &key);
    FUNC10(res == ERROR_FILE_NOT_FOUND, "Didn't expect the registry key to exist\n");
    /* Just in case */
    if (res == ERROR_SUCCESS)
    {
        FUNC3(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest");
        FUNC3(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest");
    }

    FUNC6(infhandle);
    FUNC0(inffile);
}