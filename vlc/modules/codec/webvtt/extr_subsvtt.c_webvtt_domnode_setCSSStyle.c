
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_dom_node_t ;
typedef int text_style_t ;


 int assert (int **) ;
 int ** get_ppCSSStyle (int *) ;
 int text_style_Delete (int *) ;

__attribute__((used)) static void webvtt_domnode_setCSSStyle( webvtt_dom_node_t *p_node, text_style_t *p_style )
{
    text_style_t **pp_style = get_ppCSSStyle( p_node );
    if( !pp_style )
    {
        assert( pp_style );
        if( p_style )
            text_style_Delete( p_style );
        return;
    }
    if( *pp_style )
        text_style_Delete( *pp_style );
    *pp_style = p_style;
}
