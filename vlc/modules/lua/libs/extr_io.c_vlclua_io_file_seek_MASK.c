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
 int SEEK_CUR ; 
 int SEEK_END ; 
 int SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 long FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    FILE **pp_file = (FILE**)FUNC2( L, 1, "io_file" );
    if ( !*pp_file )
        return FUNC3( L, "Attempt to use a closed file" );
    const char* psz_mode = FUNC5( L, 2, NULL );
    if ( psz_mode != NULL )
    {
        long i_offset = FUNC4( L, 3, 0 );
        int i_mode;
        if ( !FUNC7( psz_mode, "set" ) )
            i_mode = SEEK_SET;
        else if ( !FUNC7( psz_mode, "end" ) )
            i_mode = SEEK_END;
        else
            i_mode = SEEK_CUR;
        if( FUNC0( *pp_file, i_offset, i_mode ) != 0 )
            return FUNC3( L, "Failed to seek" );
    }
    FUNC6( L, FUNC1( *pp_file ) );
    return 1;
}