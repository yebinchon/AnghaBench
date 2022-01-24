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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLUILEVEL_NONE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    MSIHANDLE hdb, hpkg;
    CHAR prop[MAX_PATH];
    DWORD size = MAX_PATH;
    UINT r;

    hdb = FUNC10();
    FUNC14(hdb, "failed to create package database\n");

    FUNC8(hdb);
    FUNC5(hdb, "'CCP_random'");
    FUNC5(hdb, "'RMCCP_random'");

    FUNC11(hdb);
    FUNC7(hdb, "CCP_random", 0, "htmlfile\\shell\\open\\nonexistent", "", 1);

    FUNC9(hdb);
    FUNC6(hdb, "'RMCCP_random', '', 'C:\\', '0'");

    FUNC12(hdb);

    r = FUNC15(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC16("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC14(r == ERROR_SUCCESS, "failed to create package %u\n", r);

    FUNC1(hdb);

    FUNC4(INSTALLUILEVEL_NONE, NULL);

    r = FUNC2(hpkg, "CCPSearch");
    FUNC14(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = FUNC3(hpkg, "CCP_Success", prop, &size);
    FUNC14(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC14(!FUNC13(prop, "1"), "Expected 1, got %s\n", prop);

    FUNC1(hpkg);
    FUNC0(msifile);
}