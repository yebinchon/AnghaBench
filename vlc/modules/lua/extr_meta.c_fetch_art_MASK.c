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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_item; } ;
typedef  TYPE_1__ luabatch_context_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char*,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC10( vlc_object_t *p_this, const char * psz_filename,
                      const luabatch_context_t *p_context )
{
    lua_State *L = FUNC0( p_this, p_context->p_item, psz_filename );
    if( !L )
        return VLC_EGENERIC;

    int i_ret = FUNC9(p_this, psz_filename, L, "fetch_art", p_context);
    if(i_ret != VLC_SUCCESS)
    {
        FUNC3( L );
        return i_ret;
    }

    if(FUNC4( L ))
    {
        const char * psz_value;

        if( FUNC6( L, -1 ) )
        {
            psz_value = FUNC7( L, -1 );
            if( psz_value && *psz_value != 0 )
            {
                FUNC2( p_this, "setting arturl: %s", psz_value );
                FUNC1 ( p_context->p_item, psz_value );
                FUNC3( L );
                return VLC_SUCCESS;
            }
        }
        else if( !FUNC5( L, -1 ) )
        {
            FUNC8( p_this, "Lua art fetcher script %s: "
                 "didn't return a string", psz_filename );
        }
    }
    else
    {
        FUNC8( p_this, "Script went completely foobar" );
    }

    FUNC3( L );
    return VLC_EGENERIC;
}