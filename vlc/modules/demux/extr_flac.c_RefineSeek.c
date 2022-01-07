
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int stream_info; scalar_t__ b_stream_info; int p_packetizer; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {unsigned int i_buffer; scalar_t__ i_dts; } ;
typedef TYPE_3__ block_t ;


 unsigned int FLAC_FRAME_SIZE_MIN ;
 scalar_t__ FLAC_MAX_PREROLL ;
 scalar_t__ FLAC_MAX_SLOW_PREROLL ;
 int FlushPacketizer (int ) ;
 TYPE_3__* GetPacketizedBlock (int ,int *,TYPE_3__**) ;
 int STREAM_CAN_FASTSEEK ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 scalar_t__ __MAX (scalar_t__,scalar_t__) ;
 scalar_t__ __MIN (scalar_t__,scalar_t__) ;
 int block_Release (TYPE_3__*) ;
 TYPE_3__* vlc_stream_Block (int ,unsigned int) ;
 int vlc_stream_Control (int ,int ,int*) ;
 scalar_t__ vlc_stream_Seek (int ,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int RefineSeek( demux_t *p_demux, vlc_tick_t i_time, double i_bytemicrorate,
                       uint64_t i_lowpos, uint64_t i_highpos )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bool b_found = 0;
    block_t *p_block_out;
    block_t *p_block_in;

    unsigned i_frame_size = FLAC_FRAME_SIZE_MIN;

    bool b_canfastseek = 0;
    vlc_stream_Control( p_demux->s, STREAM_CAN_FASTSEEK, &b_canfastseek );

    uint64_t i_start_pos = vlc_stream_Tell( p_demux->s );

    while( !b_found )
    {
        FlushPacketizer( p_sys->p_packetizer );

        p_block_out = ((void*)0);
        p_block_in = ((void*)0);

        while( !p_block_out )
        {
            if( !p_block_in )
            {
                if( !(p_block_in = vlc_stream_Block( p_demux->s, i_frame_size )) )
                    break;
            }

            p_block_out = GetPacketizedBlock( p_sys->p_packetizer,
                                              p_sys->b_stream_info ? &p_sys->stream_info : ((void*)0),
                                             &p_block_in );
        }

        if( !p_block_out )
        {
            if( p_block_in )
                block_Release( p_block_in );
            break;
        }

        if( p_block_out->i_buffer > i_frame_size )
            i_frame_size = p_block_out->i_buffer;


        if( p_block_out->i_dts >= i_time )
        {
            vlc_tick_t i_diff = p_block_out->i_dts - i_time;

            if( i_diff > VLC_TICK_FROM_MS(100) && i_diff / i_bytemicrorate > i_frame_size )
            {
                i_highpos = i_start_pos;
                i_start_pos -= ( i_diff / i_bytemicrorate );
                i_start_pos = __MAX(i_start_pos, i_lowpos + i_frame_size);
            }
            else b_found = 1;
        }
        else
        {
            vlc_tick_t i_diff = i_time - p_block_out->i_dts;

            if( i_diff >= ((b_canfastseek) ? FLAC_MAX_PREROLL : FLAC_MAX_SLOW_PREROLL) &&
                i_diff / i_bytemicrorate > i_frame_size )
            {
                i_lowpos = i_start_pos;
                i_start_pos += ( i_diff / i_bytemicrorate );
                i_start_pos = __MIN(i_start_pos, i_highpos - i_frame_size);
            }
            else b_found = 1;
        }

        if( p_block_out )
            block_Release( p_block_out );
        if( p_block_in )
            block_Release( p_block_in );

        if( !b_found )
        {
            if( i_highpos < i_lowpos || i_highpos - i_lowpos < i_frame_size )
                break;

            if( VLC_SUCCESS != vlc_stream_Seek( p_demux->s, i_start_pos ) )
                break;
        }
    }

    return b_found ? VLC_SUCCESS : VLC_EGENERIC;
}
