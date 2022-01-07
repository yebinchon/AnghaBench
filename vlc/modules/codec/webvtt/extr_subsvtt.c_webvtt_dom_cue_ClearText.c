
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_lines; int * p_child; } ;
typedef TYPE_1__ webvtt_dom_cue_t ;


 int webvtt_domnode_ChainDelete (int *) ;

__attribute__((used)) static void webvtt_dom_cue_ClearText( webvtt_dom_cue_t *p_cue )
{
    webvtt_domnode_ChainDelete( p_cue->p_child );
    p_cue->p_child = ((void*)0);
    p_cue->i_lines = 0;
}
