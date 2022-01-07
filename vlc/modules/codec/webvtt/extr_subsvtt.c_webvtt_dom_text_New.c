
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_parent; int type; } ;
typedef TYPE_1__ webvtt_dom_text_t ;
typedef int webvtt_dom_node_t ;


 int NODE_TEXT ;
 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static webvtt_dom_text_t * webvtt_dom_text_New( webvtt_dom_node_t *p_parent )
{
    webvtt_dom_text_t *p_node = calloc( 1, sizeof(*p_node) );
    if( p_node )
    {
        p_node->type = NODE_TEXT;
        p_node->p_parent = p_parent;
    }
    return p_node;
}
