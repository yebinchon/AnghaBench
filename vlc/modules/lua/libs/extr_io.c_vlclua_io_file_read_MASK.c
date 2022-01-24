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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 size_t SIZE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    FILE **pp_file = (FILE**)FUNC0( L, 1, "io_file" );
    if ( !*pp_file )
        return FUNC1( L, "Attempt to use a closed file" );
    if( FUNC4( L, 2 ) == LUA_TNUMBER )
    {
        return FUNC5( L, (size_t)FUNC3( L, 2 ),
                                          *pp_file );
    }
    const char* psz_mode = FUNC2( L, 2, "*l" );
    if ( *psz_mode != '*' )
        return FUNC1( L, "Invalid file:read() format: %s", psz_mode );
    switch ( psz_mode[1] )
    {
        case 'l':
            return FUNC6( L, *pp_file );
        case 'n':
            return FUNC7( L, *pp_file );
        case 'a':
            return FUNC5( L, SIZE_MAX, *pp_file );
        default:
            break;
    }
    return FUNC1( L, "Invalid file:read() format: %s", psz_mode );
}