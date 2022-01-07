
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* p_parent; struct TYPE_6__* p_next; } ;
typedef TYPE_1__ webvtt_dom_node_t ;
struct TYPE_7__ {TYPE_1__* p_child; int i_lines; } ;
typedef TYPE_2__ webvtt_dom_cue_t ;
typedef int decoder_t ;


 TYPE_1__* CreateDomNodes (char const*,int *) ;
 int VLC_UNUSED (int *) ;
 int webvtt_domnode_Debug (TYPE_1__*,int ) ;

__attribute__((used)) static void ProcessCue( decoder_t *p_dec, const char *psz, webvtt_dom_cue_t *p_cue )
{
    VLC_UNUSED(p_dec);

    if( p_cue->p_child )
        return;
    p_cue->p_child = CreateDomNodes( psz, &p_cue->i_lines );
    for( webvtt_dom_node_t *p_child = p_cue->p_child; p_child; p_child = p_child->p_next )
        p_child->p_parent = (webvtt_dom_node_t *)p_cue;



}
