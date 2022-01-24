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
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  p_reg ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lua_State * FUNC15( vlc_object_t *p_this, input_item_t * p_item, const char *psz_filename )
{
    lua_State * L = FUNC0();
    if( !L )
    {
        FUNC11( p_this, "Could not create new Lua State" );
        return NULL;
    }

    FUNC14( L, p_this );

    /* Load Lua libraries */
    FUNC1( L ); /* XXX: Don't open all the libs? */

    FUNC2( L, "vlc", p_reg );

    FUNC5( L );
    FUNC7( L );
    FUNC8( L );
    FUNC9( L );
    FUNC6( L );
    FUNC10( L );
    FUNC4( L, p_item );

    if( FUNC13( L, psz_filename ) )
    {
        FUNC12( p_this, "Error while setting the module search path for %s",
                  psz_filename );
        FUNC3( L );
        return NULL;
    }

    return L;
}