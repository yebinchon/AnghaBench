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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9( lua_State *L, vlc_object_t *p_obj,
                              const char *psz_name )
{
    bool b_bool;
    if( FUNC1( L ) > 1 ) return FUNC8( L );

    if( FUNC1( L ) == 0 )
    {
        b_bool = FUNC7( p_obj, psz_name );
        goto end;
    }

    /* lua_gettop( L ) == 1 */
    const char *s = FUNC0( L, -1 );
    FUNC2( L, 1 );

    if( s && !FUNC4(s, "on") )
        b_bool = true;
    else if( s && !FUNC4(s, "off") )
        b_bool = false;
    else
    {
        b_bool = FUNC5( p_obj, psz_name );
        goto end;
    }

    if( b_bool != FUNC5( p_obj, psz_name ) )
        FUNC6( p_obj, psz_name, b_bool );

end:
    FUNC3( L, b_bool );
    return 1;
}