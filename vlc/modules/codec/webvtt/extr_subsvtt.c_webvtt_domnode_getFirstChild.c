
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_child; } ;
typedef TYPE_1__ webvtt_region_t ;
struct TYPE_8__ {TYPE_3__* p_child; } ;
typedef TYPE_2__ webvtt_dom_tag_t ;
struct TYPE_9__ {int type; } ;
typedef TYPE_3__ webvtt_dom_node_t ;
struct TYPE_10__ {TYPE_3__* p_child; } ;
typedef TYPE_4__ webvtt_dom_cue_t ;






__attribute__((used)) static webvtt_dom_node_t * webvtt_domnode_getFirstChild( webvtt_dom_node_t *p_node )
{
    webvtt_dom_node_t *p_child = ((void*)0);
    switch( p_node->type )
    {
        case 130:
            p_child = ((webvtt_dom_cue_t *)p_node)->p_child;
            break;
        case 129:
            p_child = ((webvtt_region_t *)p_node)->p_child;
            break;
        case 128:
            p_child = ((webvtt_dom_tag_t *)p_node)->p_child;
            break;
        default:
            break;
    }
    return p_child;
}
