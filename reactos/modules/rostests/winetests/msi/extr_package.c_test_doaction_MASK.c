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
typedef  int MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( void )
{
    MSIHANDLE hpkg;
    UINT r;

    r = FUNC2( -1, NULL );
    FUNC4( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC5(FUNC3(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC6("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC4( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = FUNC2(hpkg, NULL);
    FUNC4( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC2(0, "boo");
    FUNC4( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC2(hpkg, "boo");
    FUNC4( r == ERROR_FUNCTION_NOT_CALLED, "wrong return val\n");

    FUNC1( hpkg );
    FUNC0(msifile);
}