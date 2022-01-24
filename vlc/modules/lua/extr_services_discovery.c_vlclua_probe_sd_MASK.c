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
typedef  int /*<<< orphan*/  vlc_probe_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CAT_INTERNET ; 
 int VLC_ENOMEM ; 
 int VLC_PROBE_CONTINUE ; 
 int FUNC0 (char**,char*,char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (char*,char const*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC13( vlc_object_t *obj, const char *name )
{
    vlc_probe_t *probe = (vlc_probe_t *)obj;

    char *filename = FUNC11( "sd", name );
    if( filename == NULL )
    {
        // File suddenly disappeared - maybe a race condition, no problem
        FUNC7( probe, "Couldn't probe lua services discovery script \"%s\".",
                 name );
        return VLC_PROBE_CONTINUE;
    }

    lua_State *L = FUNC3();
    if( !L )
    {
        FUNC7( probe, "Could not create new Lua State" );
        FUNC2( filename );
        return VLC_ENOMEM;
    }
    FUNC4( L );
    if( FUNC9( L, filename ) )
    {
        FUNC7( probe, "Error while setting the module search path for %s",
                 filename );
        FUNC5( L );
        FUNC2( filename );
        return VLC_ENOMEM;
    }
    if( FUNC10( obj, L, filename ) )
    {
        FUNC7( probe, "Error loading script %s: %s", filename,
                 FUNC6( L, -1 ) );
        FUNC5( L );
        FUNC2( filename );
        return VLC_PROBE_CONTINUE;
    }
    const char *description = FUNC12( obj, L, filename );
    if( description == NULL )
        description = name;

    int r = VLC_ENOMEM;
    char *name_esc = FUNC1( name );
    char *chain;
    if( FUNC0( &chain, "lua{sd='%s'}", name_esc ) != -1 )
    {
        r = FUNC8( probe, chain, description, SD_CAT_INTERNET );
        FUNC2( chain );
    }
    FUNC2( name_esc );

    FUNC5( L );
    FUNC2( filename );
    return r;
}