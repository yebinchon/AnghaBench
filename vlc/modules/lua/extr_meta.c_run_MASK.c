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
typedef  int /*<<< orphan*/  meta_fetcher_scope_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* pf_validator ) (TYPE_1__ const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ luabatch_context_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FETCHER_SCOPE_LOCAL ; 
 int /*<<< orphan*/  FETCHER_SCOPE_NETWORK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC16( vlc_object_t *p_this, const char * psz_filename,
                lua_State * L, const char *luafunction,
                const luabatch_context_t *p_context )
{
    /* Ugly hack to delete previous versions of the fetchart()
     * functions. */
    FUNC8( L );
    FUNC9( L, luafunction );

    /* Load and run the script(s) */
    if( FUNC15( p_this, L, psz_filename ) )
    {
        FUNC12( p_this, "Error loading script %s: %s", psz_filename,
                 FUNC10( L, FUNC4( L ) ) );
        goto error;
    }


    meta_fetcher_scope_t e_scope = FETCHER_SCOPE_NETWORK; /* default to restricted one */
    FUNC3( L, "descriptor" );
    if( FUNC5( L, FUNC4( L ) ) && !FUNC6( L, 0, 1, 0 ) )
    {
        FUNC2( L, -1, "scope" );
        char *psz_scope = FUNC1( L, -1 );
        if ( psz_scope && !FUNC13( psz_scope, "local" ) )
            e_scope = FETCHER_SCOPE_LOCAL;
        FUNC0( psz_scope );
        FUNC7( L, 1 );
    }
    FUNC7( L, 1 );

    if ( p_context && p_context->pf_validator && !p_context->pf_validator( p_context, e_scope ) )
    {
        FUNC11( p_this, "skipping script (unmatched scope) %s", psz_filename );
        goto error;
    }

    FUNC3( L, luafunction );

    if( !FUNC5( L, FUNC4( L ) ) )
    {
        FUNC12( p_this, "Error while running script %s, "
                 "function %s() not found", psz_filename, luafunction );
        goto error;
    }

    if( FUNC6( L, 0, 1, 0 ) )
    {
        FUNC12( p_this, "Error while running script %s, "
                 "function %s(): %s", psz_filename, luafunction,
                 FUNC10( L, FUNC4( L ) ) );
        goto error;
    }
    return VLC_SUCCESS;

error:
    FUNC7( L, 1 );
    return VLC_EGENERIC;
}