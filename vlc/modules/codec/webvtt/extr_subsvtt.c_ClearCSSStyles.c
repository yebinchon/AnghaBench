
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* p_next; } ;
typedef TYPE_1__ webvtt_dom_node_t ;


 TYPE_1__* webvtt_domnode_getFirstChild (TYPE_1__*) ;
 int webvtt_domnode_setCSSStyle (TYPE_1__*,int *) ;
 scalar_t__ webvtt_domnode_supportsCSSStyle (TYPE_1__*) ;

__attribute__((used)) static void ClearCSSStyles( webvtt_dom_node_t *p_node )
{
    if( webvtt_domnode_supportsCSSStyle( p_node ) )
        webvtt_domnode_setCSSStyle( p_node, ((void*)0) );
    webvtt_dom_node_t *p_child = webvtt_domnode_getFirstChild( p_node );
    for ( ; p_child ; p_child = p_child->p_next )
        ClearCSSStyles( p_child );
}
