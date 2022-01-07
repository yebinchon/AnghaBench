
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_start; TYPE_2__* p_child; } ;
typedef TYPE_1__ webvtt_dom_tag_t ;
struct TYPE_7__ {int type; struct TYPE_7__* p_next; } ;
typedef TYPE_2__ webvtt_dom_node_t ;
typedef int vlc_tick_t ;
typedef int vlc_array_t ;





 int vlc_array_append (int *,void*) ;
 TYPE_2__* webvtt_domnode_getFirstChild (TYPE_2__ const*) ;

__attribute__((used)) static void GetTimedTags( const webvtt_dom_node_t *p_node,
                           vlc_tick_t i_start, vlc_tick_t i_stop, vlc_array_t *p_times )
{
    for( ; p_node; p_node = p_node->p_next )
    {
        switch( p_node->type )
        {
            case 128:
            {
                const webvtt_dom_tag_t *p_tag = (const webvtt_dom_tag_t *) p_node;
                if( p_tag->i_start > -1 && p_tag->i_start >= i_start && p_tag->i_start < i_stop )
                    (void) vlc_array_append( p_times, (void *) p_tag );
                GetTimedTags( p_tag->p_child, i_start, i_stop, p_times );
            } break;
            case 129:
            case 130:
                GetTimedTags( webvtt_domnode_getFirstChild( p_node ),
                              i_start, i_stop, p_times );
                break;
            default:
                break;
        }
    }
}
