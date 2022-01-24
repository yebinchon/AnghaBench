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
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  THEME_DIR ; 
 char* FUNC0 (char const*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* FUNC7 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 char* FUNC9 (char const*) ; 

char *FUNC10 ( const char *file )
{
    char *filename = FUNC9 ( file );
    FUNC1 ( "Opening theme, testing: %s\n", filename );
    if ( FUNC2 ( filename, G_FILE_TEST_EXISTS ) ) {
        return filename;
    }
    FUNC3 ( filename );

    if ( FUNC6 ( file, ".rasi" ) ) {
        filename = FUNC8 ( file );
    }
    else {
        filename = FUNC7 ( file, ".rasi", NULL );
    }
    // Check config's themes directory.
    const char *cpath = FUNC4 ();
    if ( cpath ) {
        char *themep = FUNC0 ( cpath, "rofi", "themes", filename, NULL );
        FUNC1 ( "Opening theme, testing: %s\n", themep );
        if ( themep && FUNC2 ( themep, G_FILE_TEST_EXISTS ) ) {
            FUNC3 ( filename );
            return themep;
        }
        FUNC3 ( themep );
    }
    // Check config directory.
    if ( cpath ) {
        char *themep = FUNC0 ( cpath, "rofi", filename, NULL );
        FUNC1 ( "Opening theme, testing: %s\n", themep );
        if ( FUNC2 ( themep, G_FILE_TEST_EXISTS ) ) {
            FUNC3 ( filename );
            return themep;
        }
        FUNC3 ( themep );
    }
    const char * datadir = FUNC5 ();
    if ( datadir ) {
        char *theme_path = FUNC0 ( datadir, "rofi", "themes", filename, NULL );
        FUNC1 ( "Opening theme, testing: %s\n", theme_path );
        if ( theme_path ) {
            if ( FUNC2 ( theme_path, G_FILE_TEST_EXISTS ) ) {
                FUNC3 ( filename );
                return theme_path;
            }
            FUNC3 ( theme_path );
        }
    }

    char *theme_path = FUNC0 ( THEME_DIR, filename, NULL );
    if ( theme_path ) {
        FUNC1 ( "Opening theme, testing: %s\n", theme_path );
        if ( FUNC2 ( theme_path, G_FILE_TEST_EXISTS ) ) {
            FUNC3 ( filename );
            return theme_path;
        }
        FUNC3 ( theme_path );
    }
    return filename;
}