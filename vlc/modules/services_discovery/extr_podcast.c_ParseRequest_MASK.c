#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_10__ {char* psz_request; int i_urls; char** ppsz_urls; int i_items; char** pp_items; int /*<<< orphan*/  b_savedurls_loaded; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,int) ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC15( services_discovery_t *p_sd )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;

    char *psz_request = p_sys->psz_request;

    int i;

    char *psz_tok = FUNC10( psz_request, ':' );
    if( !psz_tok ) return;
    *psz_tok = '\0';

    if ( ! p_sys->b_savedurls_loaded )
    {
        char *psz_urls = FUNC13( FUNC14(p_sd),
                                                "podcast-urls" );
        FUNC0( p_sd, psz_urls );
        FUNC4( psz_urls );
    }

    if( !FUNC11( psz_request, "ADD" ) )
    {
        psz_request = psz_tok + 1;
        for( i = 0; i<p_sys->i_urls; i++ )
            if( !FUNC11(p_sys->ppsz_urls[i],psz_request) )
              break;
        if( i == p_sys->i_urls )
        {
            FUNC2( p_sys->i_urls, p_sys->ppsz_urls,
                        FUNC12( psz_request ) );

            input_item_t *p_input;
            p_input = FUNC6( psz_request, psz_request );
            FUNC5( p_input, "demux=directory", VLC_INPUT_OPTION_TRUSTED );

            FUNC2( p_sys->i_items, p_sys->pp_items, p_input );
            FUNC8( p_sd, p_input );

            FUNC1( p_sd );
        }
    }
    else if ( !FUNC11( psz_request, "RM" ) )
    {
        psz_request = psz_tok + 1;
        for( i = 0; i < p_sys->i_urls; i++ )
            if( !FUNC11(p_sys->ppsz_urls[i], psz_request) )
            {
                FUNC9( p_sd, p_sys->pp_items[i] );
                FUNC7( p_sys->pp_items[i] );
                FUNC3(p_sys->i_urls, p_sys->ppsz_urls, i );
                FUNC3(p_sys->i_items, p_sys->pp_items, i );
                break;
            }
        FUNC1( p_sd );
    }

    FUNC4( p_sys->psz_request );
    p_sys->psz_request = NULL;
}