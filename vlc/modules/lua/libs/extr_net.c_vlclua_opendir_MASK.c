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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    const char *psz_dir = FUNC1( L, 1 );
    DIR *p_dir;
    int i = 0;

    if( ( p_dir = FUNC6( psz_dir ) ) == NULL )
        return FUNC2( L, "cannot open directory `%s'.", psz_dir );

    FUNC3( L );
    for( ;; )
    {
        const char *psz_filename = FUNC7( p_dir );
        if( !psz_filename ) break;
        i++;
        FUNC4( L, psz_filename );
        FUNC5( L, -2, i );
    }
    FUNC0( p_dir );
    return 1;
}