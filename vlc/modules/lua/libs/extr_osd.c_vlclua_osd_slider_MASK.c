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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    int i_position = FUNC0( L, 1 );
    const char *psz_type = FUNC1( L, 2 );
    int i_type = FUNC4( psz_type );
    int i_chan = (int)FUNC3( L, 3, VOUT_SPU_CHANNEL_OSD );
    if( !i_type )
        return FUNC2( L, "\"%s\" is not a valid slider type.",
                           psz_type );

    vout_thread_t *p_vout = FUNC5(L);
    if( p_vout )
    {
        FUNC6( p_vout, i_chan, i_position, i_type );
        FUNC7( p_vout );
    }
    return 0;
}