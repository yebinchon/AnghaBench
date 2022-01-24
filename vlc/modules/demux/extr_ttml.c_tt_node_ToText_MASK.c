#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tt_time_t ;
struct TYPE_8__ {int /*<<< orphan*/  psz_text; } ;
typedef  TYPE_1__ tt_textnode_t ;
struct TYPE_11__ {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; } ;
struct TYPE_9__ {int /*<<< orphan*/  psz_node_name; TYPE_3__* p_child; TYPE_4__ timings; } ;
typedef  TYPE_2__ tt_node_t ;
struct TYPE_10__ {scalar_t__ i_type; struct TYPE_10__* p_next; } ;
typedef  TYPE_3__ tt_basenode_t ;
struct vlc_memstream {int dummy; } ;

/* Variables and functions */
 scalar_t__ TT_NODE_TYPE_ELEMENT ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_memstream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_memstream*,TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_memstream*,char*) ; 

__attribute__((used)) static void FUNC9( struct vlc_memstream *p_stream, const tt_basenode_t *p_basenode,
                            const tt_time_t *playbacktime )
{
    if( p_basenode->i_type == TT_NODE_TYPE_ELEMENT )
    {
        const tt_node_t *p_node = (const tt_node_t *) p_basenode;

        if( FUNC4( playbacktime ) &&
           !FUNC5( &p_node->timings, playbacktime ) )
            return;

        FUNC7( p_stream, '<' );
        FUNC0( p_stream, p_node->psz_node_name );

        FUNC1( p_stream, p_node );

        if( FUNC2( p_node ) )
        {
            FUNC7( p_stream, '>' );

#ifdef TTML_DEMUX_DEBUG
            vlc_memstream_printf( p_stream, "<!-- starts %ld ends %ld -->",
                                  tt_time_Convert( &p_node->timings.begin ),
                                  tt_time_Convert( &p_node->timings.end ) );
#endif

            for( const tt_basenode_t *p_child = p_node->p_child;
                                   p_child; p_child = p_child->p_next )
            {
                FUNC9( p_stream, p_child, playbacktime );
            }

            FUNC8( p_stream, "</" );
            FUNC0( p_stream, p_node->psz_node_name );
            FUNC7( p_stream, '>' );
        }
        else
            FUNC8( p_stream, "/>" );
    }
    else
    {
        const tt_textnode_t *p_textnode = (const tt_textnode_t *) p_basenode;
        FUNC0( p_stream, p_textnode->psz_text );
    }
}