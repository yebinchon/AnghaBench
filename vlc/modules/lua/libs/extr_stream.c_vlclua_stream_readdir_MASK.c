#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  psz_url; int /*<<< orphan*/ * pf_readdir; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_10__ {int i_children; TYPE_1__** pp_children; } ;
typedef  TYPE_3__ input_item_node_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)FUNC7( L, 1, "stream" );
    const char *psz_filter = NULL;
    bool b_show_hidden = false;
    if( FUNC8( L ) >= 2 )
    {
        psz_filter = FUNC13( L, 2 );
        if( FUNC8( L ) >= 3 )
            b_show_hidden = FUNC12( L, 3 );
    }

    if( !pp_stream || !*pp_stream )
        return FUNC15( L );
    if( (*pp_stream)->pf_readdir == NULL )
        return FUNC15( L );

    input_item_t *p_input = FUNC3( (*pp_stream)->psz_url, NULL );
    if( psz_filter )
    {
        char *psz_opt;
        if( FUNC0( &psz_opt, ":ignore-filetype=\"%s\"", psz_filter ) < 0 )
        {
            FUNC4( p_input );
            return FUNC15( L );
        }
        FUNC2( p_input, psz_opt, VLC_INPUT_OPTION_TRUSTED );
        FUNC1( psz_opt );
    }
    else
        FUNC2( p_input, "ignore-filetypes=\"\"",
                              VLC_INPUT_OPTION_TRUSTED );
    if( b_show_hidden )
        FUNC2( p_input, "show-hiddenfiles",
                              VLC_INPUT_OPTION_TRUSTED );
    input_item_node_t *p_items = FUNC5( p_input );
    FUNC4( p_input );
    if( !p_items )
        return FUNC15( L );
    if ( FUNC14( *pp_stream, p_items ) )
    {
        FUNC6( p_items );
        return FUNC15( L );
    }
    FUNC9( L );
    for ( int i = 0; i < p_items->i_children; ++i )
    {
        FUNC10( L, i + 1 );
        FUNC16( L, p_items->pp_children[i]->p_item );
        FUNC11( L, -3 );
    }
    FUNC6( p_items );
    return 1;
}