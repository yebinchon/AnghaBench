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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 char* inffile ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    HANDLE handle;
    SC_HANDLE scm_handle, svc_handle;
    BOOL ret;
    char path[MAX_PATH], windir[MAX_PATH], driver[MAX_PATH];
    DWORD attrs;
    /* Minimal stuff needed */
    static const char *inf =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "[DestinationDirs]\n"
        "Winetest.DriverFiles=12\n"
        "[DefaultInstall]\n"
        "CopyFiles=Winetest.DriverFiles\n"
        "[DefaultInstall.Services]\n"
        "AddService=Winetest,,Winetest.Service\n"
        "[Winetest.Service]\n"
        "ServiceBinary=%12%\\winetest.sys\n"
        "ServiceType=1\n"
        "StartType=4\n"
        "ErrorControl=1\n"
        "[Winetest.DriverFiles]\n"
        "winetest.sys";

    /* Bail out if we don't have enough rights */
    FUNC10(0xdeadbeef);
    scm_handle = FUNC8(NULL, NULL, GENERIC_ALL);
    if (!scm_handle && (FUNC6() == ERROR_ACCESS_DENIED))
    {
        FUNC16("Not enough rights to install the service\n");
        return;
    }
    FUNC1(scm_handle);

    /* Place where we expect the driver to be installed */
    FUNC7(windir, MAX_PATH);
    FUNC13(driver, windir);
    FUNC12(driver, "\\system32\\drivers\\winetest.sys");

    /* Create a dummy driver file */
    handle = FUNC2("winetest.sys", GENERIC_WRITE, 0, NULL,
                           CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC0(handle);

    FUNC11(inffile, inf);
    FUNC17(path, "%s\\%s", CURR_DIR, inffile);
    FUNC15("DefaultInstall", 128, path);

    /* Driver should have been installed */
    attrs = FUNC5(driver);
    FUNC14(attrs != INVALID_FILE_ATTRIBUTES, "Expected driver to exist\n");

    scm_handle = FUNC8(NULL, NULL, GENERIC_ALL);

    /* Open the service to see if it's really there */
    svc_handle = FUNC9(scm_handle, "Winetest", DELETE);
    FUNC14(svc_handle != NULL, "Service was not created\n");

    FUNC10(0xdeadbeef);
    ret = FUNC4(svc_handle);
    FUNC14(ret, "Service could not be deleted : %d\n", FUNC6());

    FUNC1(svc_handle);
    FUNC1(scm_handle);

    /* File cleanup */
    FUNC3(inffile);
    FUNC3("winetest.sys");
    FUNC3(driver);
}