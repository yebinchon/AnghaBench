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
typedef  char* UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* ERROR_FUNCTION_FAILED ; 
 char* ERROR_INSTALL_PACKAGE_REJECTED ; 
 char* ERROR_INVALID_HANDLE ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* ERROR_MORE_DATA ; 
 char* ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    MSIHANDLE hpkg, hdb;
    UINT r;
    DWORD sz;
    char buffer[0x100];

    hdb = FUNC6();

    FUNC7(hdb);
    FUNC4(hdb, "'MetadataCompName', 'Photoshop.dll'");

    r = FUNC9( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC10("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC8( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    /* test invalid values */
    r = FUNC2( 0, NULL, NULL, NULL );
    FUNC8( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC2( hpkg, NULL, NULL, NULL );
    FUNC8( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC2( hpkg, "boo", NULL, NULL );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    r = FUNC2( hpkg, "boo", buffer, NULL );
    FUNC8( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    /* test retrieving an empty/nonexistent property */
    sz = sizeof buffer;
    r = FUNC2( hpkg, "boo", NULL, &sz );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( sz == 0, "wrong size returned\n");

    FUNC5( hpkg, "boo");
    sz = 0;
    FUNC12(buffer,"x");
    r = FUNC2( hpkg, "boo", buffer, &sz );
    FUNC8( r == ERROR_MORE_DATA, "wrong return val\n");
    FUNC8( !FUNC11(buffer,"x"), "buffer was changed\n");
    FUNC8( sz == 0, "wrong size returned\n");

    sz = 1;
    FUNC12(buffer,"x");
    r = FUNC2( hpkg, "boo", buffer, &sz );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( buffer[0] == 0, "buffer was not changed\n");
    FUNC8( sz == 0, "wrong size returned\n");

    /* set the property to something */
    r = FUNC3( 0, NULL, NULL );
    FUNC8( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = FUNC3( hpkg, NULL, NULL );
    FUNC8( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = FUNC3( hpkg, "", NULL );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    /* try set and get some illegal property identifiers */
    r = FUNC3( hpkg, "", "asdf" );
    FUNC8( r == ERROR_FUNCTION_FAILED, "wrong return val\n");

    r = FUNC3( hpkg, "=", "asdf" );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    r = FUNC3( hpkg, " ", "asdf" );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    r = FUNC3( hpkg, "'", "asdf" );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    sz = sizeof buffer;
    buffer[0]=0;
    r = FUNC2( hpkg, "'", buffer, &sz );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( !FUNC11(buffer,"asdf"), "buffer was not changed\n");

    /* set empty values */
    r = FUNC3( hpkg, "boo", NULL );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( FUNC5( hpkg, "boo"), "prop wasn't empty\n");

    r = FUNC3( hpkg, "boo", "" );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( FUNC5( hpkg, "boo"), "prop wasn't empty\n");

    /* set a non-empty value */
    r = FUNC3( hpkg, "boo", "xyz" );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 1;
    FUNC12(buffer,"x");
    r = FUNC2( hpkg, "boo", buffer, &sz );
    FUNC8( r == ERROR_MORE_DATA, "wrong return val\n");
    FUNC8( buffer[0] == 0, "buffer was not changed\n");
    FUNC8( sz == 3, "wrong size returned\n");

    sz = 4;
    FUNC12(buffer,"x");
    r = FUNC2( hpkg, "boo", buffer, &sz );
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( !FUNC11(buffer,"xyz"), "buffer was not changed\n");
    FUNC8( sz == 3, "wrong size returned\n");

    sz = 3;
    FUNC12(buffer,"x");
    r = FUNC2( hpkg, "boo", buffer, &sz );
    FUNC8( r == ERROR_MORE_DATA, "wrong return val\n");
    FUNC8( !FUNC11(buffer,"xy"), "buffer was not changed\n");
    FUNC8( sz == 3, "wrong size returned\n");

    r = FUNC3(hpkg, "SourceDir", "foo");
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 4;
    r = FUNC2(hpkg, "SOURCEDIR", buffer, &sz);
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( !FUNC11(buffer,""), "buffer wrong\n");
    FUNC8( sz == 0, "wrong size returned\n");

    sz = 4;
    r = FUNC2(hpkg, "SOMERANDOMNAME", buffer, &sz);
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( !FUNC11(buffer,""), "buffer wrong\n");
    FUNC8( sz == 0, "wrong size returned\n");

    sz = 4;
    r = FUNC2(hpkg, "SourceDir", buffer, &sz);
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");
    FUNC8( !FUNC11(buffer,"foo"), "buffer wrong\n");
    FUNC8( sz == 3, "wrong size returned\n");

    r = FUNC3(hpkg, "MetadataCompName", "Photoshop.dll");
    FUNC8( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 0;
    r = FUNC2(hpkg, "MetadataCompName", NULL, &sz );
    FUNC8( r == ERROR_SUCCESS, "return wrong\n");
    FUNC8( sz == 13, "size wrong (%d)\n", sz);

    sz = 13;
    r = FUNC2(hpkg, "MetadataCompName", buffer, &sz );
    FUNC8( r == ERROR_MORE_DATA, "return wrong\n");
    FUNC8( !FUNC11(buffer,"Photoshop.dl"), "buffer wrong\n");

    r = FUNC3(hpkg, "property", "value");
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = 6;
    r = FUNC2(hpkg, "property", buffer, &sz);
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8( !FUNC11(buffer, "value"), "Expected value, got %s\n", buffer);

    r = FUNC3(hpkg, "property", NULL);
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = 6;
    r = FUNC2(hpkg, "property", buffer, &sz);
    FUNC8( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    FUNC8(!buffer[0], "Expected empty string, got %s\n", buffer);

    FUNC1( hpkg );
    FUNC0(msifile);
}