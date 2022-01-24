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

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char const*) ; 

int FUNC8 ( int argc, char ** argv )
{
    FUNC1 ( argc, argv );

    if ( FUNC6 ( LC_ALL, "" ) == NULL ) {
        FUNC2 ( stderr, "Failed to set locale.\n" );
        return EXIT_FAILURE;
    }

    /**
     * Test some path functions. Not easy as not sure what is right output on travis.
     */
    // Test if root is preserved.
    char *str = FUNC5 ( "/" );
    FUNC0 ( FUNC7 ( str, "/" ) == 0 );
    FUNC3 ( str );
    // Test is relative path is preserved.
    str = FUNC5 ( "../AUTHORS" );
    FUNC0 ( FUNC7 ( str, "../AUTHORS" ) == 0 );
    FUNC3 ( str );
    // Test another one.
    str = FUNC5 ( "/bin/false" );
    FUNC0 ( FUNC7 ( str, "/bin/false" ) == 0 );
    FUNC3 ( str );
    // See if user paths get expanded in full path.
    str = FUNC5 ( "~/" );
    const char *hd = FUNC4 ();
    FUNC0 ( FUNC7 ( str, hd ) == 0 );
    FUNC3 ( str );
    str = FUNC5 ( "~root/" );
    FUNC0 ( str[0] == '/' );
    FUNC3 ( str );
}