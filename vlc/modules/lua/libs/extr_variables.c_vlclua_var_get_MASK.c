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
 scalar_t__ VLC_SUCCESS ; 
 int VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    vlc_value_t val;
    vlc_object_t **pp_obj = FUNC2( L, 1, "vlc_object" );
    const char *psz_var = FUNC1( L, 2 );

    int i_type = FUNC5( *pp_obj, psz_var );
    if( FUNC4( *pp_obj, psz_var, &val ) != VLC_SUCCESS )
        return 0;

    FUNC3( L, 2 );
    FUNC6( L, i_type, val );
    if( i_type == VLC_VAR_STRING )
        FUNC0( val.psz_string );
    return 1;
}