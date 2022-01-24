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
typedef  int /*<<< orphan*/  extension_dialog_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7( lua_State *L )
{
    FUNC3( L, "vlc" );
    FUNC2( L, -1, "__dialog" );
    extension_dialog_t *p_dlg = ( extension_dialog_t* )FUNC4( L, -1 );

    if( !p_dlg )
        return VLC_SUCCESS;

    int i_ret = VLC_SUCCESS;
    if( FUNC0( L ) )
    {
        i_ret = FUNC5( FUNC6( L ), p_dlg );
        FUNC1( L, 0 );
    }

    return i_ret;
}