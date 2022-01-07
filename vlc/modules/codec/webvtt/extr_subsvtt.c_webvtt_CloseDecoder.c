
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int webvtt_dom_node_t ;
typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int p_css_rules; scalar_t__ p_root; } ;
typedef TYPE_2__ decoder_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_css_rules_Delete (int ) ;
 int webvtt_domnode_ChainDelete (int *) ;

void webvtt_CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    webvtt_domnode_ChainDelete( (webvtt_dom_node_t *) p_sys->p_root );





    free( p_sys );
}
