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
 scalar_t__ VLC_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (char const*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    const char *psz_dirname = FUNC0( L, 1 );
    char **ppsz_dir_list = NULL;
    int i = 1;

    if( FUNC4( psz_dirname, &ppsz_dir_list )
        != VLC_SUCCESS )
        return 0;
    FUNC1( L );
    for( char **ppsz_dir = ppsz_dir_list; *ppsz_dir; ppsz_dir++ )
    {
        FUNC2( L, *ppsz_dir );
        FUNC3( L, -2, i );
        i ++;
    }
    FUNC5( ppsz_dir_list );
    return 1;
}