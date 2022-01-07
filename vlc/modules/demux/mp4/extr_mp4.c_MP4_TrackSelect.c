
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int b_selected; scalar_t__ p_es; int b_ok; } ;
typedef TYPE_1__ mp4_track_t ;
struct TYPE_7__ {int out; } ;
typedef TYPE_2__ demux_t ;


 int ES_OUT_SET_ES_STATE ;
 scalar_t__ MP4_isMetadata (TYPE_1__*) ;
 int es_out_Control (int ,int ,scalar_t__,int) ;

__attribute__((used)) static void MP4_TrackSelect( demux_t *p_demux, mp4_track_t *p_track, bool b_select )
{
    if( !p_track->b_ok || MP4_isMetadata(p_track) )
        return;

    if( b_select == p_track->b_selected )
        return;

    if( !b_select && p_track->p_es )
    {
        es_out_Control( p_demux->out, ES_OUT_SET_ES_STATE,
                        p_track->p_es, 0 );
    }

    p_track->b_selected = b_select;
}
