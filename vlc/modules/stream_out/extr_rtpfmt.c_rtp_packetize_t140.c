
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {int* p_buffer; size_t i_buffer; scalar_t__ i_length; scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef TYPE_1__ block_t ;


 int VLC_SUCCESS ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (int*,int const*,size_t) ;
 size_t rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int ,scalar_t__) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_t140( sout_stream_id_sys_t *id, block_t *in )
{
    const size_t i_max = rtp_mtu (id);
    const uint8_t *p_data = in->p_buffer;
    size_t i_data = in->i_buffer;

    for( unsigned i_packet = 0; i_data > 0; i_packet++ )
    {
        size_t i_payload = i_data;



        if( i_data > i_max )
        {
            i_payload = i_max;

            while( ( p_data[i_payload] & 0xC0 ) == 0x80 )
            {
                if( i_payload == 0 )
                 {
                    block_Release(in);
                    return VLC_SUCCESS;
                }
                i_payload--;
            }
        }

        block_t *out = block_Alloc( 12 + i_payload );
        if( out == ((void*)0) )
        {
            block_Release(in);
            return VLC_SUCCESS;
        }

        rtp_packetize_common( id, out, 0, in->i_pts + i_packet );
        memcpy( out->p_buffer + 12, p_data, i_payload );

        out->i_dts = in->i_pts;
        out->i_length = 0;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    block_Release(in);
    return VLC_SUCCESS;
}
