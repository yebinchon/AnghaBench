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
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    const char *psz_icon = FUNC0( L, 1 );
    int i_icon = FUNC3( psz_icon );
    int i_chan = (int)FUNC2( L, 2, VOUT_SPU_CHANNEL_OSD );
    if( !i_icon )
        return FUNC1( L, "\"%s\" is not a valid osd icon.", psz_icon );

    vout_thread_t *p_vout = FUNC4(L);
    if( p_vout )
    {
        FUNC5( p_vout, i_chan, i_icon );
        FUNC6( p_vout );
    }
    return 0;
}