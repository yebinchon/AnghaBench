
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_10__ {int channels; int sample_freq; } ;
struct TYPE_12__ {int i_position; int p_es; TYPE_1__ info; int decoder; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_13__ {int i_buffer; scalar_t__ i_dts; scalar_t__ i_pts; scalar_t__ p_buffer; } ;
typedef TYPE_4__ block_t ;
typedef int MPC_SAMPLE_FORMAT ;


 int MPC_DECODER_BUFFER_LENGTH ;
 int VLC_DEMUXER_EGENERIC ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 TYPE_4__* block_New (TYPE_2__*,int) ;
 int block_Release (TYPE_4__*) ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 int mpc_decoder_decode (int *,int *,int *,int *) ;
 scalar_t__ vlc_tick_from_samples (int,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_data;
    int i_ret;

    p_data = block_New( p_demux,
                        MPC_DECODER_BUFFER_LENGTH*sizeof(MPC_SAMPLE_FORMAT) );
    if( !p_data )
        return VLC_DEMUXER_EGENERIC;

    i_ret = mpc_decoder_decode( &p_sys->decoder,
                                (MPC_SAMPLE_FORMAT*)p_data->p_buffer,
                                ((void*)0), ((void*)0) );
    if( i_ret <= 0 )
    {
        block_Release( p_data );
        return i_ret < 0 ? VLC_DEMUXER_EGENERIC : VLC_DEMUXER_EOF;
    }


    p_data->i_buffer = i_ret * sizeof(MPC_SAMPLE_FORMAT) * p_sys->info.channels;
    p_data->i_dts = p_data->i_pts =
            VLC_TICK_0 + vlc_tick_from_samples(p_sys->i_position, p_sys->info.sample_freq);

    es_out_SetPCR( p_demux->out, p_data->i_dts );

    es_out_Send( p_demux->out, p_sys->p_es, p_data );


    p_sys->i_position += i_ret;

    return VLC_DEMUXER_SUCCESS;
}
