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
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
typedef  int /*<<< orphan*/  ttml_style_t ;
typedef  int /*<<< orphan*/  ttml_context_t ;
struct TYPE_4__ {int /*<<< orphan*/  attr_dict; struct TYPE_4__* p_parent; } ;
typedef  TYPE_1__ tt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ttml_style_t * FUNC10( ttml_context_t *p_ctx, tt_node_t *p_node )
{
    FUNC4( p_node );
    ttml_style_t *p_ttml_style = NULL;
    vlc_dictionary_t merged;
    FUNC7( &merged, 0 );

    /* Merge dics backwards without overwriting */
    for( ; p_node; p_node = p_node->p_parent )
    {
        FUNC3( &p_node->attr_dict, &merged, false );

        const char *psz_styleid = (const char *)
                FUNC9( &p_node->attr_dict, "style" );
        if( psz_styleid )
            FUNC1( p_ctx, psz_styleid, &merged );

        const char *psz_regionid = (const char *)
                FUNC9( &p_node->attr_dict, "region" );
        if( psz_regionid )
            FUNC0( p_ctx, psz_regionid, &merged );
    }

    if( !FUNC8( &merged ) && (p_ttml_style = FUNC5()) )
    {
        FUNC2( p_ctx, &merged, p_ttml_style );
    }

    FUNC6( &merged, NULL, NULL );

    return p_ttml_style;
}