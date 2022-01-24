#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_VAR_ISCOMMAND ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_1__) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10( lua_State *L )
{
    vlc_object_t * p_this = FUNC8( L );
    vlc_object_t *vlc = FUNC0(FUNC7(p_this));
    vlc_value_t val_arg;

    const char *psz_cmd = FUNC1( L, 1 );
    val_arg.psz_string = (char*)FUNC3( L, 2, "" );

    int i_type = FUNC6( vlc, psz_cmd );
    if( ! (i_type & VLC_VAR_ISCOMMAND) )
    {
        return FUNC2( L, "libvlc's \"%s\" is not a command",
                           psz_cmd );
    }

    int i_ret = FUNC5( vlc, psz_cmd, val_arg );
    FUNC4( L, 2 );

    return FUNC9( L, i_ret );
}