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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    const char *psz_message = FUNC1( L, 1 );
    int i_chan = (int)FUNC2( L, 2, VOUT_SPU_CHANNEL_OSD );
    const char *psz_position = FUNC3( L, 3, "top-right" );
    vlc_tick_t duration = (vlc_tick_t)FUNC2( L, 4, FUNC0(1));

    vout_thread_t *p_vout = FUNC5(L);
    if( p_vout )
    {
        FUNC6( p_vout, i_chan, FUNC4( psz_position ),
                      duration, psz_message );
        FUNC7( p_vout );
    }
    return 0;
}