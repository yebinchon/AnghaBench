
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * psz_text; } ;
typedef TYPE_1__ webvtt_dom_text_t ;
struct TYPE_12__ {TYPE_3__* p_child; int psz_tag; } ;
typedef TYPE_2__ webvtt_dom_tag_t ;
struct TYPE_13__ {scalar_t__ type; struct TYPE_13__* p_next; } ;
typedef TYPE_3__ webvtt_dom_node_t ;
typedef int webvtt_dom_cue_t ;
struct TYPE_14__ {int style; scalar_t__ psz_text; struct TYPE_14__* p_next; } ;
typedef TYPE_4__ text_segment_t ;
struct render_variables_s {int dummy; } ;
typedef int decoder_t ;


 int ComputeStyle (int *,TYPE_3__ const*) ;
 TYPE_4__* ConvertRubyNodeToSegment (TYPE_3__*) ;
 scalar_t__ NODE_TAG ;
 scalar_t__ NODE_TEXT ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_4__* text_segment_New (int *) ;
 int vlc_xml_decode (scalar_t__) ;

__attribute__((used)) static text_segment_t *ConvertNodesToSegments( decoder_t *p_dec,
                                               struct render_variables_s *p_vars,
                                               const webvtt_dom_cue_t *p_cue,
                                               const webvtt_dom_node_t *p_node )
{
    text_segment_t *p_head = ((void*)0);
    text_segment_t **pp_append = &p_head;
    for( ; p_node ; p_node = p_node->p_next )
    {
        while( *pp_append )
            pp_append = &((*pp_append)->p_next);

        if( p_node->type == NODE_TEXT )
        {
            const webvtt_dom_text_t *p_textnode = (const webvtt_dom_text_t *) p_node;
            if( p_textnode->psz_text == ((void*)0) )
                continue;

            *pp_append = text_segment_New( p_textnode->psz_text );
            if( *pp_append )
            {
                if( (*pp_append)->psz_text )
                    vlc_xml_decode( (*pp_append)->psz_text );
                (*pp_append)->style = ComputeStyle( p_dec, p_node );
            }
        }
        else if( p_node->type == NODE_TAG )
        {
            const webvtt_dom_tag_t *p_tag = (const webvtt_dom_tag_t *)p_node;
            if( strcmp(p_tag->psz_tag, "ruby") )
                *pp_append = ConvertNodesToSegments( p_dec, p_vars, p_cue,
                                                     p_tag->p_child );
            else
                *pp_append = ConvertRubyNodeToSegment( p_tag->p_child );
        }
    }
    return p_head;
}
