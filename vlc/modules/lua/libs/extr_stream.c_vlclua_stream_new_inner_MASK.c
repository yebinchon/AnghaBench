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
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vlclua_stream_delete ; 
 int /*<<< orphan*/  vlclua_stream_reg ; 

__attribute__((used)) static int FUNC9( lua_State *L, stream_t *p_stream )
{
    if( !p_stream )
    {
        FUNC6( L );
        FUNC5( L, "Error when opening stream" );
        return 2;
    }

    stream_t **pp_stream = FUNC3( L, sizeof( stream_t * ) );
    *pp_stream = p_stream;

    if( FUNC0( L, "stream" ) )
    {
        FUNC2( L );
        FUNC1( L, NULL, vlclua_stream_reg );
        FUNC7( L, -2, "__index" );
        FUNC4( L, vlclua_stream_delete );
        FUNC7( L, -2, "__gc" );
    }

    FUNC8( L, -2 );
    return 1;
}