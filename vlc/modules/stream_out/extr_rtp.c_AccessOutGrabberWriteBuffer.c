
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t vlc_tick_t ;
typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_13__ {TYPE_6__* packet; TYPE_3__** es; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_14__ {int i_mtu; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;
struct TYPE_15__ {size_t i_dts; size_t i_buffer; int i_flags; size_t i_length; int * p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_16__ {size_t i_buffer; size_t i_dts; size_t i_length; int * p_buffer; } ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_SUCCESS ;
 size_t __MIN (size_t,unsigned int) ;
 TYPE_6__* block_Alloc (int) ;
 int memcpy (int *,int *,size_t) ;
 int rtp_packetize_common (TYPE_3__*,TYPE_6__*,int,size_t) ;
 int rtp_packetize_send (TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static ssize_t AccessOutGrabberWriteBuffer( sout_stream_t *p_stream,
                                            const block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = p_sys->es[0];

    vlc_tick_t i_dts = p_buffer->i_dts;

    uint8_t *p_data = p_buffer->p_buffer;
    size_t i_data = p_buffer->i_buffer;
    size_t i_max = id->i_mtu - 12;
    bool b_dis = (p_buffer->i_flags & BLOCK_FLAG_DISCONTINUITY);

    size_t i_packet = ( p_buffer->i_buffer + i_max - 1 ) / i_max;

    while( i_data > 0 )
    {
        size_t i_size;


        if( p_sys->packet &&
            p_sys->packet->i_buffer + i_data > i_max )
        {
            rtp_packetize_send( id, p_sys->packet );
            p_sys->packet = ((void*)0);
        }

        if( p_sys->packet == ((void*)0) )
        {

            p_sys->packet = block_Alloc( id->i_mtu );

            rtp_packetize_common( id, p_sys->packet, b_dis, i_dts );
            p_sys->packet->i_buffer = 12;
            p_sys->packet->i_dts = i_dts;
            p_sys->packet->i_length = p_buffer->i_length / i_packet;
            i_dts += p_sys->packet->i_length;
            b_dis = 0;
        }

        i_size = __MIN( i_data,
                        (unsigned)(id->i_mtu - p_sys->packet->i_buffer) );

        memcpy( &p_sys->packet->p_buffer[p_sys->packet->i_buffer],
                p_data, i_size );

        p_sys->packet->i_buffer += i_size;
        p_data += i_size;
        i_data -= i_size;
    }

    return VLC_SUCCESS;
}
