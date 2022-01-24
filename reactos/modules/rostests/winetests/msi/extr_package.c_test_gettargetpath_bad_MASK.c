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
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_DIRECTORY ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR boo[] = {'b','o','o',0};
    static const WCHAR empty[] = {0};
    char buffer[0x80];
    WCHAR bufferW[0x80];
    MSIHANDLE hpkg;
    DWORD sz;
    UINT r;

    r = FUNC6(FUNC4(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC7("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC5( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = FUNC2( 0, NULL, NULL, NULL );
    FUNC5( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC2( 0, NULL, NULL, &sz );
    FUNC5( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC2( 0, "boo", NULL, NULL );
    FUNC5( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC2( 0, "boo", NULL, NULL );
    FUNC5( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC2( hpkg, "boo", NULL, NULL );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    r = FUNC2( hpkg, "boo", buffer, NULL );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    sz = 0;
    r = FUNC2( hpkg, "", buffer, &sz );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    r = FUNC3( 0, NULL, NULL, NULL );
    FUNC5( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC3( 0, NULL, NULL, &sz );
    FUNC5( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC3( 0, boo, NULL, NULL );
    FUNC5( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC3( 0, boo, NULL, NULL );
    FUNC5( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC3( hpkg, boo, NULL, NULL );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    r = FUNC3( hpkg, boo, bufferW, NULL );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    sz = 0;
    r = FUNC3( hpkg, empty, bufferW, &sz );
    FUNC5( r == ERROR_DIRECTORY, "wrong return val\n");

    FUNC1( hpkg );
    FUNC0(msifile);
}