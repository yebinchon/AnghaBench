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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSTALL_FAILURE ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLUILEVEL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    MSIHANDLE hpkg;
    MSIHANDLE hdb;
    UINT r;

    FUNC3(INSTALLUILEVEL_NONE, NULL);

    hdb = FUNC7();
    FUNC8( hdb, "failed to create package database\n" );

    FUNC6( hdb );

    FUNC5( hdb, "'X = \"1\"', 'one'" );

    /* invalid condition */
    FUNC5( hdb, "'X != \"1\"', 'one'" );

    r = FUNC9( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC10("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC8( r == ERROR_SUCCESS, "failed to create package %u\n", r );

    FUNC1( hdb );

    r = FUNC4( hpkg, "X", "1" );
    FUNC8( r == ERROR_SUCCESS, "failed to set property\n" );

    FUNC3(INSTALLUILEVEL_NONE, NULL);

    /* invalid conditions are ignored */
    r = FUNC2( hpkg, "LaunchConditions" );
    FUNC8( r == ERROR_SUCCESS, "cost init failed\n" );

    /* verify LaunchConditions still does some verification */
    r = FUNC4( hpkg, "X", "2" );
    FUNC8( r == ERROR_SUCCESS, "failed to set property\n" );

    r = FUNC2( hpkg, "LaunchConditions" );
    FUNC8( r == ERROR_INSTALL_FAILURE, "Expected ERROR_INSTALL_FAILURE, got %d\n", r );

    FUNC1( hpkg );
    FUNC0( msifile );
}