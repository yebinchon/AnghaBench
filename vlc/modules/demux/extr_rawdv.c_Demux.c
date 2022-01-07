
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int out; int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int f_rate; scalar_t__ i_pcr; scalar_t__ b_hurry_up; scalar_t__ p_es_video; scalar_t__ p_es_audio; int frame_size; scalar_t__ i_dsf; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef TYPE_3__ block_t ;


 int ES_OUT_GET_ES_STATE ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 TYPE_3__* dv_extract_audio (TYPE_3__*) ;
 int es_out_Control (int ,int ,scalar_t__,int*) ;
 int es_out_Send (int ,scalar_t__,TYPE_3__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 TYPE_3__* vlc_stream_Block (int ,int ) ;
 scalar_t__ vlc_tick_now () ;
 scalar_t__ vlc_tick_rate_duration (int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;
    bool b_audio = 0;

    if( p_sys->b_hurry_up )
    {

        p_sys->i_pcr = vlc_tick_now() + (p_sys->i_dsf ? VLC_TICK_FROM_MS(120) : VLC_TICK_FROM_MS(90));
    }


    es_out_SetPCR( p_demux->out, VLC_TICK_0 + p_sys->i_pcr );
    p_block = vlc_stream_Block( p_demux->s, p_sys->frame_size );
    if( p_block == ((void*)0) )
        return VLC_DEMUXER_EOF;

    if( p_sys->p_es_audio )
    {
        es_out_Control( p_demux->out, ES_OUT_GET_ES_STATE,
                        p_sys->p_es_audio, &b_audio );
    }

    p_block->i_dts =
    p_block->i_pts = VLC_TICK_0 + p_sys->i_pcr;

    if( b_audio )
    {
        block_t *p_audio_block = dv_extract_audio( p_block );
        if( p_audio_block )
            es_out_Send( p_demux->out, p_sys->p_es_audio, p_audio_block );
    }

    es_out_Send( p_demux->out, p_sys->p_es_video, p_block );

    if( !p_sys->b_hurry_up )
    {
        p_sys->i_pcr += vlc_tick_rate_duration( p_sys->f_rate );
    }

    return VLC_DEMUXER_SUCCESS;
}
