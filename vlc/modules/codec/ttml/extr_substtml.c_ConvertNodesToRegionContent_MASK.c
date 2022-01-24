#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ttml_style_t ;
struct TYPE_12__ {scalar_t__ p_segments; } ;
struct TYPE_11__ {int /*<<< orphan*/  p_bytes; int /*<<< orphan*/  i_bytes; } ;
struct TYPE_13__ {TYPE_2__ updt; TYPE_1__ bgbitmap; } ;
typedef  TYPE_3__ ttml_region_t ;
typedef  int /*<<< orphan*/  ttml_context_t ;
typedef  int /*<<< orphan*/  tt_time_t ;
typedef  int /*<<< orphan*/  tt_textnode_t ;
struct TYPE_14__ {int /*<<< orphan*/  psz_node_name; int /*<<< orphan*/  attr_dict; int /*<<< orphan*/  timings; TYPE_5__* p_child; } ;
typedef  TYPE_4__ tt_node_t ;
struct TYPE_15__ {scalar_t__ i_type; struct TYPE_15__* p_next; } ;
typedef  TYPE_5__ tt_basenode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ TT_NODE_TYPE_TEXT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC14( ttml_context_t *p_ctx, const tt_node_t *p_node,
                                         ttml_region_t *p_region,
                                         const ttml_style_t *p_upper_set_styles,
                                         tt_time_t playbacktime )
{
    if( FUNC6( &playbacktime ) &&
       !FUNC7( &p_node->timings, &playbacktime ) )
        return;

    const char *psz_regionid = (const char *)
        FUNC13( &p_node->attr_dict, "region" );

    /* Region isn't set or is changing */
    if( psz_regionid || p_region == NULL )
        p_region = FUNC4( p_ctx, psz_regionid );

    /* Check for bitmap profile defined by ST2052 / SMPTE-TT */
    if( !FUNC5( p_node->psz_node_name, "div" ) &&
         FUNC12( &p_node->attr_dict, "smpte:backgroundImage" ) )
    {
        if( !p_region->bgbitmap.p_bytes )
        {
            const char *psz_id = FUNC13( &p_node->attr_dict,
                                                               "smpte:backgroundImage" );
            /* Seems SMPTE can't make diff between html and xml.. */
            if( psz_id && *psz_id == '#' )
            {
                const char *psz_base64 = FUNC3( p_ctx, &psz_id[1] );
                if( psz_base64 )
                    p_region->bgbitmap.i_bytes =
                        FUNC11( &p_region->bgbitmap.p_bytes, psz_base64 );
            }
        }
    }

    /* awkward paragraph handling */
    if( !FUNC5( p_node->psz_node_name, "p" ) &&
        p_region->updt.p_segments )
    {
        FUNC0( p_region );
    }

    /* Styles from <set> element */
    ttml_style_t *p_set_styles = (p_upper_set_styles)
                               ? FUNC9( p_upper_set_styles )
                               : NULL;

    for( const tt_basenode_t *p_child = p_node->p_child;
                              p_child; p_child = p_child->p_next )
    {
        if( p_child->i_type == TT_NODE_TYPE_TEXT )
        {
            FUNC1( p_ctx, (const tt_textnode_t *) p_child,
                                p_set_styles, p_region );
        }
        else if( !FUNC5( ((const tt_node_t *)p_child)->psz_node_name, "set" ) )
        {
            const tt_node_t *p_set = (const tt_node_t *)p_child;
            if( !FUNC6( &playbacktime ) ||
                FUNC7( &p_set->timings, &playbacktime ) )
            {
                if( p_set_styles != NULL || (p_set_styles = FUNC10()) )
                {
                    /* Merge with or create a local set of styles to apply to following childs */
                    FUNC2( p_ctx, &p_set->attr_dict, p_set_styles );
                }
            }
        }
        else if( !FUNC5( ((const tt_node_t *)p_child)->psz_node_name, "br" ) )
        {
            FUNC0( p_region );
        }
        else
        {
            FUNC14( p_ctx, (const tt_node_t *) p_child,
                                         p_region, p_set_styles, playbacktime );
        }
    }

    if( p_set_styles )
        FUNC8( p_set_styles );
}