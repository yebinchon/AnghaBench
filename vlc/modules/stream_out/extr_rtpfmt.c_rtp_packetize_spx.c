
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {char* p_buffer; int i_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int i_length; } ;
typedef TYPE_1__ block_t ;


 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (char*,char*,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int ,scalar_t__) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_spx( sout_stream_id_sys_t *id, block_t *in )
{
    uint8_t *p_buffer = in->p_buffer;
    int i_data_size, i_payload_size, i_payload_padding;
    i_data_size = i_payload_size = in->i_buffer;
    i_payload_padding = 0;
    block_t *p_out;

    if ( in->i_buffer > rtp_mtu (id) )
    {
        block_Release(in);
        return VLC_SUCCESS;
    }
    if ( i_payload_size % 4 )
    {
        i_payload_padding = 4 - ( i_payload_size % 4 );
        i_payload_size += i_payload_padding;
    }





    p_out = block_Alloc( 12 + i_payload_size );

    if ( i_payload_padding )
    {



        char c_first_pad, c_remaining_pad;
        c_first_pad = 0x7F;
        c_remaining_pad = 0xFF;






        p_out->p_buffer[12 + i_data_size] = c_first_pad;
        switch (i_payload_padding)
        {
          case 2:
            p_out->p_buffer[12 + i_data_size + 1] = c_remaining_pad;
            break;
          case 3:
            p_out->p_buffer[12 + i_data_size + 1] = c_remaining_pad;
            p_out->p_buffer[12 + i_data_size + 2] = c_remaining_pad;
            break;
        }
    }


    rtp_packetize_common( id, p_out, 0,
                        (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );

    memcpy( &p_out->p_buffer[12], p_buffer, i_data_size );

    p_out->i_dts = in->i_dts;
    p_out->i_length = in->i_length;
    block_Release(in);


    rtp_packetize_send( id, p_out );
    return VLC_SUCCESS;
}
