
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * p_cssstyle; } ;
typedef TYPE_1__ webvtt_region_t ;
struct TYPE_7__ {int * p_cssstyle; } ;
typedef TYPE_2__ webvtt_dom_tag_t ;
struct TYPE_8__ {int type; } ;
typedef TYPE_3__ webvtt_dom_node_t ;
struct TYPE_9__ {int * p_cssstyle; } ;
typedef TYPE_4__ webvtt_dom_cue_t ;
typedef int text_style_t ;






__attribute__((used)) static text_style_t ** get_ppCSSStyle( webvtt_dom_node_t *p_node )
{
    switch( p_node->type )
    {
        case 130:
            return &((webvtt_dom_cue_t *)p_node)->p_cssstyle;
        case 129:
            return &((webvtt_region_t *)p_node)->p_cssstyle;
        case 128:
            return &((webvtt_dom_tag_t *)p_node)->p_cssstyle;
        default:
            return ((void*)0);
    }
}
