
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_12__ ;


typedef int int64_t ;
struct TYPE_25__ {int out; int s; TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_24__ {int i_bytes; int i_frames; int i_frame_samples; } ;
struct TYPE_22__ {scalar_t__ b_use_word; } ;
struct TYPE_26__ {int b_start; int b_initial_sync_failed; int i_bitrate_avg; int b_estimate_bitrate; TYPE_9__* p_packetizer; TYPE_3__ xing; scalar_t__ p_es; int b_big_endian; TYPE_1__ codec; int i_packet_size; } ;
typedef TYPE_5__ demux_sys_t ;
struct TYPE_27__ {scalar_t__ i_buffer; struct TYPE_27__* p_next; int i_dts; int i_pts; int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_23__ {int i_rate; } ;
struct TYPE_21__ {int b_packetized; int i_bitrate; TYPE_2__ audio; } ;
struct TYPE_28__ {TYPE_12__ fmt_out; TYPE_6__* (* pf_packetize ) (TYPE_9__*,TYPE_6__**) ;} ;


 int INT64_C (int) ;
 int VLC_TICK_0 ;
 int VLC_TICK_INVALID ;
 TYPE_6__* block_Alloc (scalar_t__) ;
 int block_ChainLastAppend (TYPE_6__***,TYPE_6__*) ;
 int block_CopyProperties (TYPE_6__*,TYPE_6__*) ;
 int block_Release (TYPE_6__*) ;
 scalar_t__ es_out_Add (int ,TYPE_12__*) ;
 int msg_Dbg (TYPE_4__*,char*) ;
 TYPE_6__* stub1 (TYPE_9__*,TYPE_6__**) ;
 int swab (int ,int ,scalar_t__) ;
 TYPE_6__* vlc_stream_Block (int ,int ) ;
 int vlc_stream_Read (int ,int *,int) ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static bool Parse( demux_t *p_demux, block_t **pp_output )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block_in, *p_block_out;

    *pp_output = ((void*)0);

    if( p_sys->codec.b_use_word )
    {

        int64_t i_pos = vlc_stream_Tell( p_demux->s );
        if( (i_pos & 1) && vlc_stream_Read( p_demux->s, ((void*)0), 1 ) != 1 )
            return 1;
    }

    p_block_in = vlc_stream_Block( p_demux->s, p_sys->i_packet_size );
    bool b_eof = p_block_in == ((void*)0);

    if( p_block_in )
    {
        if( p_sys->codec.b_use_word && !p_sys->b_big_endian && p_block_in->i_buffer > 0 )
        {

            block_t *old = p_block_in;
            p_block_in = block_Alloc( p_block_in->i_buffer );
            if( p_block_in )
            {
                block_CopyProperties( p_block_in, old );
                swab( old->p_buffer, p_block_in->p_buffer, old->i_buffer );
            }
            block_Release( old );
        }

        if( p_block_in )
        {
            p_block_in->i_pts =
            p_block_in->i_dts = (p_sys->b_start || p_sys->b_initial_sync_failed) ?
                                 VLC_TICK_0 : VLC_TICK_INVALID;
        }
    }
    p_sys->b_initial_sync_failed = p_sys->b_start;

    while( ( p_block_out = p_sys->p_packetizer->pf_packetize( p_sys->p_packetizer, p_block_in ? &p_block_in : ((void*)0) ) ) )
    {
        p_sys->b_initial_sync_failed = 0;
        while( p_block_out )
        {
            if( !p_sys->p_es )
            {
                p_sys->p_packetizer->fmt_out.b_packetized = 1;
                p_sys->p_es = es_out_Add( p_demux->out,
                                          &p_sys->p_packetizer->fmt_out);



                if( p_sys->xing.i_bytes && p_sys->xing.i_frames &&
                    p_sys->xing.i_frame_samples )
                {
                    p_sys->i_bitrate_avg = p_sys->xing.i_bytes * INT64_C(8) *
                        p_sys->p_packetizer->fmt_out.audio.i_rate /
                        p_sys->xing.i_frames / p_sys->xing.i_frame_samples;

                    if( p_sys->i_bitrate_avg > 0 )
                        p_sys->b_estimate_bitrate = 0;
                }

                if( p_sys->b_estimate_bitrate )
                    p_sys->i_bitrate_avg = p_sys->p_packetizer->fmt_out.i_bitrate;
            }

            block_t *p_next = p_block_out->p_next;
            p_block_out->p_next = ((void*)0);

            block_ChainLastAppend( &pp_output, p_block_out );

            p_block_out = p_next;
        }
    }

    if( p_sys->b_initial_sync_failed )
        msg_Dbg( p_demux, "did not sync on first block" );
    p_sys->b_start = 0;

    return b_eof;
}
