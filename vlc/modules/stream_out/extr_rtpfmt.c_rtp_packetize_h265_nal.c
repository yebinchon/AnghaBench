
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t vlc_tick_t ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_5__ {size_t i_dts; size_t i_length; int* p_buffer; } ;
typedef TYPE_1__ block_t ;


 int GetWBE (int const*) ;
 int VLC_SUCCESS ;
 size_t __MIN (size_t,size_t const) ;
 TYPE_1__* block_Alloc (int) ;
 int memcpy (int*,int const*,size_t const) ;
 size_t rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,size_t) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int
rtp_packetize_h265_nal( sout_stream_id_sys_t *id,
                        const uint8_t *p_data, size_t i_data, vlc_tick_t i_pts,
                        vlc_tick_t i_dts, bool b_last, vlc_tick_t i_length )
{
    const size_t i_max = rtp_mtu (id);

    if( i_data < 3 )
        return VLC_SUCCESS;


    if( i_data <= i_max )
    {

        block_t *out = block_Alloc( 12 + i_data );
        out->i_dts = i_dts;
        out->i_length = i_length;


        rtp_packetize_common( id, out, b_last, i_pts );

        memcpy( &out->p_buffer[12], p_data, i_data );

        rtp_packetize_send( id, out );
    }
    else
    {
        const uint16_t i_nal_hdr = (GetWBE(p_data) & 0x81FF) | 0x6200 ;
        const uint8_t i_nal_type = (p_data[0] & 0x7E) >> 1;


        const size_t i_count = ( i_data-2 + i_max-3 - 2 ) / (i_max-3);

        p_data += 2;
        i_data -= 2;

        for( size_t i = 0; i < i_count; i++ )
        {
            const size_t i_payload = __MIN( i_data, i_max-3 );
            block_t *out = block_Alloc( 12 + 3 + i_payload );
            out->i_dts = i_dts + i * i_length / i_count;
            out->i_length = i_length / i_count;


            rtp_packetize_common( id, out, (b_last && i_payload == i_data),
                                    i_pts );

            out->p_buffer[12] = i_nal_hdr >> 8;
            out->p_buffer[13] = i_nal_hdr & 0x00FF;

            out->p_buffer[14] = ( i == 0 ? 0x80 : 0x00 ) | ( (i == i_count-1) ? 0x40 : 0x00 ) | i_nal_type;
            memcpy( &out->p_buffer[15], p_data, i_payload );

            rtp_packetize_send( id, out );

            i_data -= i_payload;
            p_data += i_payload;
        }
    }
    return VLC_SUCCESS;
}
