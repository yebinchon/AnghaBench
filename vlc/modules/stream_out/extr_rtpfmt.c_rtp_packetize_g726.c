
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {int i_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int i_length; int * p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int __MIN (int,int) ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int ,scalar_t__) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_g726( sout_stream_id_sys_t *id, block_t *in, int i_pad )
{
    int i_max = (rtp_mtu( id )- 12 + i_pad - 1) & ~i_pad;
    int i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int i_data = in->i_buffer;
    int i_packet = 0;

    while( i_data > 0 )
    {
        int i_payload = __MIN( i_max, i_data );
        block_t *out = block_Alloc( 12 + i_payload );


        rtp_packetize_common( id, out, 0,
                      (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts) );

        memcpy( &out->p_buffer[12], p_data, i_payload );

        out->i_dts = in->i_dts + i_packet++ * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    block_Release(in);
    return VLC_SUCCESS;
}
