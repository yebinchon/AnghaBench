
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_child; struct TYPE_4__* psz_tag; struct TYPE_4__* psz_attrs; int p_cssstyle; } ;
typedef TYPE_1__ webvtt_dom_tag_t ;


 int free (TYPE_1__*) ;
 int text_style_Delete (int ) ;
 int webvtt_domnode_ChainDelete (int ) ;

__attribute__((used)) static void webvtt_dom_tag_Delete( webvtt_dom_tag_t *p_node )
{
    text_style_Delete( p_node->p_cssstyle );
    free( p_node->psz_attrs );
    free( p_node->psz_tag );
    webvtt_domnode_ChainDelete( p_node->p_child );
    free( p_node );
}
