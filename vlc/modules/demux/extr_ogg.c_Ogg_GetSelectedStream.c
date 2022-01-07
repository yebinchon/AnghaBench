
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_cat; } ;
struct TYPE_8__ {TYPE_1__ fmt; int p_es; } ;
typedef TYPE_2__ logical_stream_t ;
struct TYPE_9__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_10__ {int i_streams; TYPE_2__** pp_stream; } ;
typedef TYPE_4__ demux_sys_t ;


 scalar_t__ AUDIO_ES ;
 int ES_OUT_GET_ES_STATE ;
 scalar_t__ VIDEO_ES ;
 int es_out_Control (int ,int ,int ,int*) ;

__attribute__((used)) static logical_stream_t * Ogg_GetSelectedStream( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    logical_stream_t *p_stream = ((void*)0);
    for( int i=0; i<p_sys->i_streams; i++ )
    {
        logical_stream_t *p_candidate = p_sys->pp_stream[i];
        if ( !p_candidate->p_es ) continue;

        bool b_selected = 0;
        es_out_Control( p_demux->out, ES_OUT_GET_ES_STATE,
                        p_candidate->p_es, &b_selected );
        if ( !b_selected ) continue;

        if ( !p_stream && p_candidate->fmt.i_cat == AUDIO_ES )
        {
            p_stream = p_candidate;
            continue;
        }

        if ( p_candidate->fmt.i_cat == VIDEO_ES )
        {
            p_stream = p_candidate;
            break;
        }
    }
    return p_stream;
}
