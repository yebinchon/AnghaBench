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
typedef  int /*<<< orphan*/  p_f ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  vlclua_io_file_close ; 
 int /*<<< orphan*/  vlclua_io_file_reg ; 

__attribute__((used)) static int FUNC12( lua_State *L )
{
    if( FUNC5( L ) < 1 )
        return FUNC1( L, "Usage: vlc.io.open(file_path [, mode])" );
    const char* psz_path = FUNC0( L, 1 );
    const char* psz_mode = FUNC3( L, 2, "r" );
    FILE *p_f =  FUNC11( psz_path, psz_mode );
    if ( p_f == NULL )
        return 0;

    FILE** pp_f = FUNC7( L, sizeof( p_f ) );
    *pp_f = p_f;

    if( FUNC2( L, "io_file" ) )
    {
        FUNC6( L );
        FUNC4( L, NULL, vlclua_io_file_reg );
        FUNC9( L, -2, "__index" );
        FUNC8( L, vlclua_io_file_close );
        FUNC9( L, -2, "__gc" );
    }
    FUNC10( L, -2 );
    return 1;
}