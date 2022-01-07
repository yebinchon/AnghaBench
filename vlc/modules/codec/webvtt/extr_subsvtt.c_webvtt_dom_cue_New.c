
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; int * p_cssstyle; scalar_t__ i_lines; int * p_child; void* i_stop; void* i_start; int * psz_id; int type; } ;
typedef TYPE_1__ webvtt_dom_cue_t ;
typedef void* vlc_tick_t ;


 int NODE_CUE ;
 TYPE_1__* calloc (int,int) ;
 int webvtt_cue_settings_Init (int *) ;

__attribute__((used)) static webvtt_dom_cue_t * webvtt_dom_cue_New( vlc_tick_t i_start, vlc_tick_t i_end )
{
    webvtt_dom_cue_t *p_cue = calloc( 1, sizeof(*p_cue) );
    if( p_cue )
    {
        p_cue->type = NODE_CUE;
        p_cue->psz_id = ((void*)0);
        p_cue->i_start = i_start;
        p_cue->i_stop = i_end;
        p_cue->p_child = ((void*)0);
        p_cue->i_lines = 0;
        p_cue->p_cssstyle = ((void*)0);
        webvtt_cue_settings_Init( &p_cue->settings );
    }
    return p_cue;
}
