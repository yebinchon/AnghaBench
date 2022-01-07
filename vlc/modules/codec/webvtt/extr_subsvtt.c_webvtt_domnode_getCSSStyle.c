
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_dom_node_t ;
typedef int text_style_t ;


 int ** get_ppCSSStyle (int *) ;

__attribute__((used)) static text_style_t * webvtt_domnode_getCSSStyle( webvtt_dom_node_t *p_node )
{
    text_style_t **pp_style = get_ppCSSStyle( p_node );
    if( pp_style )
        return *pp_style;
    return ((void*)0);
}
