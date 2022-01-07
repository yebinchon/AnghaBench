
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* psz_id; int settings; int p_cssstyle; } ;
typedef TYPE_1__ webvtt_dom_cue_t ;


 int free (TYPE_1__*) ;
 int text_style_Delete (int ) ;
 int webvtt_cue_settings_Clean (int *) ;
 int webvtt_dom_cue_ClearText (TYPE_1__*) ;

__attribute__((used)) static void webvtt_dom_cue_Delete( webvtt_dom_cue_t *p_cue )
{
    text_style_Delete( p_cue->p_cssstyle );
    webvtt_dom_cue_ClearText( p_cue );
    webvtt_cue_settings_Clean( &p_cue->settings );
    free( p_cue->psz_id );
    free( p_cue );
}
