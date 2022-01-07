
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sout_stream_id_sys_t ;
typedef int hxxx_iterator_ctx_t ;
struct TYPE_7__ {int i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int i_length; } ;
typedef TYPE_1__ block_t ;


 int SetDWBE (int*,int) ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int __MIN (int,int) ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 scalar_t__ hxxx_annexb_iterate_next (int *,int const**,size_t*) ;
 int hxxx_iterator_init (int *,int*,int,int ) ;
 int memcpy (int*,int*,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,scalar_t__) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_mpv( sout_stream_id_sys_t *id, block_t *in )
{
    int i_max = rtp_mtu (id) - 4;
    int i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int i_data = in->i_buffer;
    int i;
    int b_sequence_start = 0;
    int i_temporal_ref = 0;
    int i_picture_coding_type = 0;
    int i_fbv = 0, i_bfc = 0, i_ffv = 0, i_ffc = 0;
    int b_start_slice = 0;


    hxxx_iterator_ctx_t it;
    hxxx_iterator_init( &it, in->p_buffer, in->i_buffer, 0 );
    const uint8_t *p_seq;
    size_t i_seq;
    while( hxxx_annexb_iterate_next( &it, &p_seq, &i_seq ) )
    {
        const uint8_t *p = p_seq;
        if( *p == 0xb3 )
        {

            b_sequence_start = 1;
        }
        else if( *p == 0x00 && i_seq >= 5 )
        {

            i_temporal_ref = ( p[1] << 2) |((p[2]>>6)&0x03);
            i_picture_coding_type = (p[2] >> 3)&0x07;

            if( i_picture_coding_type == 2 ||
                i_picture_coding_type == 3 )
            {
                i_ffv = (p[3] >> 2)&0x01;
                i_ffc = ((p[3]&0x03) << 1)|((p[4]>>7)&0x01);
                if( i_seq > 5 && i_picture_coding_type == 3 )
                {
                    i_fbv = (p[4]>>6)&0x01;
                    i_bfc = (p[4]>>3)&0x07;
                }
            }
        }
        else if( *p <= 0xaf )
        {
            b_start_slice = 1;
        }
    }

    for( i = 0; i < i_count; i++ )
    {
        int i_payload = __MIN( i_max, i_data );
        block_t *out = block_Alloc( 16 + i_payload );

        uint32_t h = ( i_temporal_ref << 16 )|
                          ( b_sequence_start << 13 )|
                          ( b_start_slice << 12 )|
                          ( i == i_count - 1 ? 1 << 11 : 0 )|
                          ( i_picture_coding_type << 8 )|
                          ( i_fbv << 7 )|( i_bfc << 4 )|( i_ffv << 3 )|i_ffc;


        rtp_packetize_common( id, out, (i == i_count - 1)?1:0,
                          in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts );

        SetDWBE( out->p_buffer + 12, h );

        memcpy( &out->p_buffer[16], p_data, i_payload );

        out->i_dts = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    block_Release(in);
    return VLC_SUCCESS;
}
