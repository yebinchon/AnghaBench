#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 scalar_t__ VLC_SUCCESS ; 
 int VLC_VAR_STRING ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,TYPE_1__) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
    vlc_value_t val;
    vlc_object_t *p_obj;
    if( FUNC5( L, 1 ) == LUA_TNIL )
        p_obj = FUNC7( L );
    else
    {
        vlc_object_t **pp_obj = FUNC3( L, 1, "vlc_object" );
        p_obj = *pp_obj;
    }
    const char *psz_var = FUNC2( L, 2 );

    int i_type = FUNC0( psz_var );
    if( FUNC6( p_obj, psz_var, i_type, &val ) != VLC_SUCCESS )
        return 0;

    FUNC4( L, 2 );
    FUNC8( L, i_type, val );
    if( i_type == VLC_VAR_STRING )
        FUNC1( val.psz_string );
    return 1;
}