
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {int i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int i_length; } ;
typedef TYPE_1__ block_t ;


 int RTP_VP8_HEADER_SIZE ;
 int RTP_VP8_PAYLOAD_START ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int __MIN (int,int) ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (int*,int*,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,scalar_t__) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_vp8( sout_stream_id_sys_t *id, block_t *in )
{
    int i_max = rtp_mtu (id) - RTP_VP8_HEADER_SIZE;
    int i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int i_data = in->i_buffer;

    if ( i_max <= 0 )
    {
        block_Release(in);
        return VLC_EGENERIC;
    }

    for( int i = 0; i < i_count; i++ )
    {
        int i_payload = __MIN( i_max, i_data );
        block_t *out = block_Alloc( RTP_VP8_PAYLOAD_START + i_payload );
        if ( out == ((void*)0) )
        {
            block_Release(in);
            return VLC_ENOMEM;
        }



        if (i == 0)
            out->p_buffer[12] = 0x10;
        else
            out->p_buffer[12] = 0;


        rtp_packetize_common( id, out, (i == i_count - 1),
                      (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );
        memcpy( &out->p_buffer[RTP_VP8_PAYLOAD_START], p_data, i_payload );

        out->i_dts = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    block_Release(in);
    return VLC_SUCCESS;
}
