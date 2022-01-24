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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char DIR_SEP_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char***) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

int FUNC12( lua_State *L, const char *psz_filename )
{
    /* Setup the module search path:
     *   * "The script's directory"/modules
     *   * "The script's parent directory"/modules
     *   * and so on for all the next directories in the directory list
     */
    char *psz_path = FUNC7( psz_filename );
    if( !psz_path )
        return 1;

    char *psz_char = FUNC8( psz_path, DIR_SEP_CHAR );
    if( !psz_char )
    {
        FUNC0( psz_path );
        return 1;
    }
    *psz_char = '\0';

    /* psz_path now holds the file's directory */
    psz_char = FUNC8( psz_path, DIR_SEP_CHAR );
    if( !psz_char )
    {
        FUNC0( psz_path );
        return 1;
    }
    *psz_char = '\0';

    /* Push package on stack */
    int count = 0;
    FUNC3( L, "package" );

    /* psz_path now holds the file's parent directory */
    count += FUNC9( L, psz_path );
    *psz_char = DIR_SEP_CHAR;

    /* psz_path now holds the file's directory */
    count += FUNC9( L, psz_path );

    char **ppsz_dir_list = NULL;
    FUNC10( psz_char+1/* gruik? */, &ppsz_dir_list );
    char **ppsz_dir = ppsz_dir_list;

    for( ; *ppsz_dir && FUNC6( *ppsz_dir, psz_path ); ppsz_dir++ );
    FUNC0( psz_path );

    for( ; *ppsz_dir; ppsz_dir++ )
    {
        psz_path = *ppsz_dir;
        /* FIXME: doesn't work well with meta/... modules due to the double
         * directory depth */
        psz_char = FUNC8( psz_path, DIR_SEP_CHAR );
        if( !psz_char )
        {
            FUNC11( ppsz_dir_list );
            return 1;
        }

        *psz_char = '\0';
        count += FUNC9( L, psz_path );
        *psz_char = DIR_SEP_CHAR;
        count += FUNC9( L, psz_path );
    }

    FUNC2( L, -(count+1), "path" ); /* Get package.path */
    FUNC1( L, count+1 ); /* Concat vlc module paths and package.path */
    FUNC5( L, -2, "path"); /* Set package.path */
    FUNC4( L, 1 ); /* Pop the package module */

    FUNC11( ppsz_dir_list );
    return 0;
}