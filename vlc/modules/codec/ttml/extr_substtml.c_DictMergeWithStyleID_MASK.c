#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
struct TYPE_5__ {scalar_t__ p_rootnode; } ;
typedef  TYPE_1__ ttml_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  attr_dict; } ;
typedef  TYPE_2__ tt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (scalar_t__,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( ttml_context_t *p_ctx, const char *psz_styles,
                                  vlc_dictionary_t *p_dst )
{
    FUNC2(p_ctx->p_rootnode);
    char *psz_dup;
    if( psz_styles && p_ctx->p_rootnode && (psz_dup = FUNC4( psz_styles )) )
    {
        /* Use temp dict instead of reverse token processing to
         * resolve styles in specified order */
        vlc_dictionary_t tempdict;
        FUNC7( &tempdict, 0 );

        char *saveptr;
        char *psz_id = FUNC5( psz_dup, " ", &saveptr );
        while( psz_id )
        {
            /* Lookup referenced style ID */
            const tt_node_t *p_node = FUNC1( p_ctx->p_rootnode,
                                                "style", -1, psz_id );
            if( p_node )
                FUNC0( &p_node->attr_dict, &tempdict, true );

            psz_id = FUNC5( NULL, " ", &saveptr );
        }

        if( !FUNC8( &tempdict ) )
            FUNC0( &tempdict, p_dst, false );

        FUNC6( &tempdict, NULL, NULL );
        FUNC3( psz_dup );
    }
}