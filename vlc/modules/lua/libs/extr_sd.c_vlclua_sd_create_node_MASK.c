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
typedef  int /*<<< orphan*/  services_discovery_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INPUT_DURATION_INDEFINITE ; 
 int /*<<< orphan*/  INPUT_ITEM_URI_NOP ; 
 int /*<<< orphan*/  ITEM_NET_UNKNOWN ; 
 int /*<<< orphan*/  ITEM_TYPE_NODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 char* FUNC19 (char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlclua_node_reg ; 
 int /*<<< orphan*/  vlclua_sd_node_delete ; 

__attribute__((used)) static input_item_t *FUNC21( services_discovery_t *p_sd,
                                            lua_State *L )
{
    if( !FUNC8( L, -1 ) )
    {
        FUNC17( p_sd, "Error: argument must be table" );
        return NULL;
    }

    FUNC6( L, -1, "title" );
    if( !FUNC7( L, -1 ) )
    {
        FUNC17( p_sd, "Error: \"%s\" parameter is required", "title" );
        return NULL;
    }

    const char *psz_name = FUNC15( L, -1 );
    input_item_t *p_input = FUNC2( INPUT_ITEM_URI_NOP, psz_name,
                                               INPUT_DURATION_INDEFINITE,
                                               ITEM_TYPE_NODE,
                                               ITEM_NET_UNKNOWN );
    FUNC11( L, 1 );

    if( FUNC20(p_input == NULL) )
        return NULL;

    FUNC6( L, -1, "arturl" );
    if( FUNC7( L, -1 ) && FUNC18( FUNC15( L, -1 ), "" ) )
    {
        char *psz_value = FUNC19( FUNC15( L, -1 ) );
        FUNC0( psz_value );
        FUNC16( p_sd, "ArtURL: %s", psz_value );
        /* TODO: ask for art download if not local file */
        FUNC3( p_input, psz_value );
        FUNC1( psz_value );
    }
    FUNC11( L, 1 );

    input_item_t **udata = FUNC10( L, sizeof( input_item_t * ) );
    *udata = p_input;
    if( FUNC4( L, "node" ) )
    {
        FUNC9( L );
        FUNC5( L, NULL, vlclua_node_reg );
        FUNC13( L, -2, "__index" );
        FUNC12( L, vlclua_sd_node_delete );
        FUNC13( L, -2, "__gc" );
    }
    FUNC14( L, -2 );

    return p_input;
}