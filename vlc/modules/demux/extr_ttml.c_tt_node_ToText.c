
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tt_time_t ;
struct TYPE_8__ {int psz_text; } ;
typedef TYPE_1__ tt_textnode_t ;
struct TYPE_11__ {int end; int begin; } ;
struct TYPE_9__ {int psz_node_name; TYPE_3__* p_child; TYPE_4__ timings; } ;
typedef TYPE_2__ tt_node_t ;
struct TYPE_10__ {scalar_t__ i_type; struct TYPE_10__* p_next; } ;
typedef TYPE_3__ tt_basenode_t ;
struct vlc_memstream {int dummy; } ;


 scalar_t__ TT_NODE_TYPE_ELEMENT ;
 int tt_MemstreamPutEntities (struct vlc_memstream*,int ) ;
 int tt_node_AttributesToText (struct vlc_memstream*,TYPE_2__ const*) ;
 scalar_t__ tt_node_HasChild (TYPE_2__ const*) ;
 int tt_time_Convert (int *) ;
 scalar_t__ tt_time_Valid (int const*) ;
 int tt_timings_Contains (TYPE_4__*,int const*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,int ,int ) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;

__attribute__((used)) static void tt_node_ToText( struct vlc_memstream *p_stream, const tt_basenode_t *p_basenode,
                            const tt_time_t *playbacktime )
{
    if( p_basenode->i_type == TT_NODE_TYPE_ELEMENT )
    {
        const tt_node_t *p_node = (const tt_node_t *) p_basenode;

        if( tt_time_Valid( playbacktime ) &&
           !tt_timings_Contains( &p_node->timings, playbacktime ) )
            return;

        vlc_memstream_putc( p_stream, '<' );
        tt_MemstreamPutEntities( p_stream, p_node->psz_node_name );

        tt_node_AttributesToText( p_stream, p_node );

        if( tt_node_HasChild( p_node ) )
        {
            vlc_memstream_putc( p_stream, '>' );







            for( const tt_basenode_t *p_child = p_node->p_child;
                                   p_child; p_child = p_child->p_next )
            {
                tt_node_ToText( p_stream, p_child, playbacktime );
            }

            vlc_memstream_puts( p_stream, "</" );
            tt_MemstreamPutEntities( p_stream, p_node->psz_node_name );
            vlc_memstream_putc( p_stream, '>' );
        }
        else
            vlc_memstream_puts( p_stream, "/>" );
    }
    else
    {
        const tt_textnode_t *p_textnode = (const tt_textnode_t *) p_basenode;
        tt_MemstreamPutEntities( p_stream, p_textnode->psz_text );
    }
}
