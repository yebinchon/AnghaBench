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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  char* LPCSTR ;
typedef  int INT_PTR ;
typedef  int ATOM ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FOOBARW ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _foobarW ; 
 int /*<<< orphan*/  foobarW ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ unicode_OS ; 

__attribute__((used)) static void FUNC8(void)
{
    ATOM atom, w_atom;
    INT_PTR i;

    FUNC5( 0xdeadbeef );
    atom = FUNC0( "foobar" );
    FUNC6( atom >= 0xc000, "bad atom id %x\n", atom );
    FUNC6( FUNC4() == 0xdeadbeef, "AddAtomA set last error\n" );

    /* Verify that it can be found (or not) appropriately */
    FUNC6( FUNC2( "foobar" ) == atom, "could not find atom foobar\n" );
    FUNC6( FUNC2( "FOOBAR" ) == atom, "could not find atom FOOBAR\n" );
    FUNC6( !FUNC2( "_foobar" ), "found _foobar\n" );

    /* Add the same atom, specifying string as unicode; should
     * find the first one, not add a new one */
    FUNC5( 0xdeadbeef );
    w_atom = FUNC1( foobarW );
    if (w_atom && FUNC4() != ERROR_CALL_NOT_IMPLEMENTED)
        unicode_OS = TRUE;
    else
        FUNC7("WARNING: Unicode atom APIs are not supported on this platform\n");

    if (unicode_OS)
    {
        FUNC6( w_atom == atom, "Unicode atom does not match ASCII\n" );
        FUNC6( FUNC4() == 0xdeadbeef, "AddAtomW set last error\n" );
    }

    /* Verify that it can be found (or not) appropriately via unicode name */
    if (unicode_OS)
    {
        FUNC6( FUNC3( foobarW ) == atom, "could not find atom foobar\n" );
        FUNC6( FUNC3( FOOBARW ) == atom, "could not find atom FOOBAR\n" );
        FUNC6( !FUNC3( _foobarW ), "found _foobar\n" );
    }

    /* Test integer atoms
     * (0x0001 .. 0xbfff) should be valid;
     * (0xc000 .. 0xffff) should be invalid */

    FUNC5( 0xdeadbeef );
    FUNC6( FUNC0(0) == 0 && FUNC4() == 0xdeadbeef, "succeeded to add atom 0\n" );
    if (unicode_OS)
    {
        FUNC5( 0xdeadbeef );
        FUNC6( FUNC1(0) == 0 && FUNC4() == 0xdeadbeef, "succeeded to add atom 0\n" );
    }

    FUNC5( 0xdeadbeef );
    for (i = 1; i <= 0xbfff; i++)
    {
        FUNC5( 0xdeadbeef );
        FUNC6( FUNC0((LPCSTR)i) == i && FUNC4() == 0xdeadbeef,
            "failed to add atom %lx\n", i );
        if (unicode_OS)
        {
            FUNC5( 0xdeadbeef );
            FUNC6( FUNC1((LPCWSTR)i) == i && FUNC4() == 0xdeadbeef,
                "failed to add atom %lx\n", i );
        }
    }

    for (i = 0xc000; i <= 0xffff; i++)
    {
        FUNC6( !FUNC0((LPCSTR)i), "succeeded adding %lx\n", i );
        if (unicode_OS)
            FUNC6( !FUNC1((LPCWSTR)i), "succeeded adding %lx\n", i );
    }
}