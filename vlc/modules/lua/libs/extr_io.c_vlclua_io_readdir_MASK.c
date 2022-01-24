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
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
    if( FUNC3( L ) < 1 )
        return FUNC2( L, "Usage: vlc.io.readdir(name)" );
    const char* psz_path = FUNC1( L, 1 );
    DIR* p_dir =  FUNC7( psz_path );
    if ( p_dir == NULL )
        return 0;

    FUNC4( L );
    const char* psz_entry;
    int idx = 1;
    while ( ( psz_entry = FUNC8( p_dir ) ) != NULL )
    {
        FUNC5( L, psz_entry );
        FUNC6( L, -2, idx );
        idx++;
    }
    FUNC0( p_dir );
    return 1;
}