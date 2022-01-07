
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int b_eof; int b_eos; int i_sendtime; TYPE_3__** track; int i_preroll_start; void* i_time; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_8__ {void* i_time; } ;
typedef TYPE_3__ asf_track_t ;


 int ASFPACKET_PREROLL_FROM_CURRENT ;
 int ES_OUT_RESET_PCR ;
 int FlushQueue (TYPE_3__*) ;
 int MAX_ASF_TRACKS ;
 void* VLC_TICK_INVALID ;
 int es_out_Control (int ,int ) ;

__attribute__((used)) static void SeekPrepare( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    p_sys->b_eof = 0;
    p_sys->b_eos = 0;
    p_sys->i_time = VLC_TICK_INVALID;
    p_sys->i_sendtime = -1;
    p_sys->i_preroll_start = ASFPACKET_PREROLL_FROM_CURRENT;

    for( int i = 0; i < MAX_ASF_TRACKS ; i++ )
    {
        asf_track_t *tk = p_sys->track[i];
        if( tk )
        {
            FlushQueue( tk );
            tk->i_time = VLC_TICK_INVALID;
        }
    }

    es_out_Control( p_demux->out, ES_OUT_RESET_PCR );
}
