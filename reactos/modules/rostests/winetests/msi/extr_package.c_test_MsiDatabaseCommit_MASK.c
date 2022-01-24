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
typedef  int /*<<< orphan*/  buf ;
typedef  char* UINT ;
typedef  int MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* ERROR_INSTALL_PACKAGE_REJECTED ; 
 char* ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int,char*,char*,int*) ; 
 char* FUNC4 (char*,int*) ; 
 char* FUNC5 (int,char*,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static void FUNC12(void)
{
    UINT r;
    MSIHANDLE hdb, hpkg = 0;
    char buf[32], package[12];
    DWORD sz;

    hdb = FUNC6();
    FUNC9( hdb, "failed to create database\n" );

    FUNC7( hdb );

    FUNC11( package, "#%u", hdb );
    r = FUNC4( package, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC10("Not enough rights to perform tests\n");
        goto error;
    }
    FUNC9( r == ERROR_SUCCESS, "got %u\n", r );

    r = FUNC5( hpkg, "PROP", "value" );
    FUNC9( r == ERROR_SUCCESS, "got %u\n", r );

    buf[0] = 0;
    sz = sizeof(buf);
    r = FUNC3( hpkg, "PROP", buf, &sz );
    FUNC9( r == ERROR_SUCCESS, "MsiGetPropertyA returned %u\n", r );
    FUNC9( !FUNC8( buf, "value" ), "got \"%s\"\n", buf );

    r = FUNC2( hdb );
    FUNC9( r == ERROR_SUCCESS, "MsiDatabaseCommit returned %u\n", r );

    buf[0] = 0;
    sz = sizeof(buf);
    r = FUNC3( hpkg, "PROP", buf, &sz );
    FUNC9( r == ERROR_SUCCESS, "MsiGetPropertyA returned %u\n", r );
    FUNC9( !FUNC8( buf, "value" ), "got \"%s\"\n", buf );

    FUNC1( hpkg );
error:
    FUNC1( hdb );
    FUNC0( msifile );
}