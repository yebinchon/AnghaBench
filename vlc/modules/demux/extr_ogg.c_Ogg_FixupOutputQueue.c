
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_18__ {int packet; int bytes; } ;
typedef TYPE_6__ ogg_packet ;
struct TYPE_17__ {TYPE_8__* p_blocks; } ;
struct TYPE_16__ {int i_codec; int i_cat; } ;
struct TYPE_14__ {int p_info; } ;
struct TYPE_13__ {int i_framesize; int i_framesperpacket; } ;
struct TYPE_15__ {TYPE_2__ vorbis; TYPE_1__ speex; } ;
struct TYPE_19__ {TYPE_5__ queue; int dts; TYPE_4__ fmt; TYPE_3__ special; } ;
typedef TYPE_7__ logical_stream_t ;
typedef int demux_t ;
typedef int date_t ;
struct TYPE_20__ {scalar_t__ i_dts; int i_flags; int i_nb_samples; struct TYPE_20__* p_next; int p_buffer; int i_buffer; } ;
typedef TYPE_8__ block_t ;


 int BLOCK_FLAG_HEADER ;
 int Ogg_OpusPacketDuration (TYPE_6__*) ;
 int VIDEO_ES ;



 scalar_t__ VLC_TICK_INVALID ;
 int VLC_UNUSED (int *) ;
 int VORBIS_HEADERS_VALID (TYPE_7__*) ;
 scalar_t__ date_Decrement (int *,unsigned int) ;
 scalar_t__ date_Get (int *) ;
 int date_Increment (int *,int) ;
 int date_Set (int *,scalar_t__) ;
 int msg_Err (int *,char*) ;
 long vorbis_packet_blocksize (int ,TYPE_6__*) ;

__attribute__((used)) static vlc_tick_t Ogg_FixupOutputQueue( demux_t *p_demux, logical_stream_t *p_stream )
{
    vlc_tick_t i_enddts = VLC_TICK_INVALID;




    VLC_UNUSED(p_demux);


    unsigned i_total_samples = 0;
    for( block_t *p_block = p_stream->queue.p_blocks; p_block; p_block = p_block->p_next )
    {
        if( p_block->i_dts != VLC_TICK_INVALID )
        {
            i_enddts = p_block->i_dts;
            break;
        }

        if( p_block->i_flags & BLOCK_FLAG_HEADER )
            continue;

        ogg_packet dumb_packet;
        dumb_packet.bytes = p_block->i_buffer;
        dumb_packet.packet = p_block->p_buffer;

        switch( p_stream->fmt.i_codec )
        {
            case 129:
                p_block->i_nb_samples = p_stream->special.speex.i_framesize *
                                        p_stream->special.speex.i_framesperpacket;
                break;
            case 130:
                p_block->i_nb_samples = Ogg_OpusPacketDuration( &dumb_packet );
                break;
            default:
                if( p_stream->fmt.i_cat == VIDEO_ES )
                    p_block->i_nb_samples = 1;
                break;
        }
        i_total_samples += p_block->i_nb_samples;
    }


    if( i_enddts != VLC_TICK_INVALID )
    {
        date_t d = p_stream->dts;
        date_Set( &d, i_enddts );
        i_enddts = date_Decrement( &d, i_total_samples );
        for( block_t *p_block = p_stream->queue.p_blocks; p_block; p_block = p_block->p_next )
        {
            if( p_block->i_dts != VLC_TICK_INVALID )
                break;
            if( p_block->i_flags & BLOCK_FLAG_HEADER )
                continue;
            p_block->i_dts = date_Get( &d );
            date_Increment( &d, p_block->i_nb_samples );
        }
    }

    return i_enddts;
}
