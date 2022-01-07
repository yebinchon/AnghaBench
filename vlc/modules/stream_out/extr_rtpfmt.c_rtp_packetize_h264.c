
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {scalar_t__ p_head; scalar_t__ p_tail; } ;
typedef TYPE_1__ hxxx_iterator_ctx_t ;
struct TYPE_8__ {size_t i_buffer; scalar_t__ i_pts; scalar_t__ i_dts; size_t i_length; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_2__*) ;
 scalar_t__ hxxx_annexb_iterate_next (TYPE_1__*,int const**,size_t*) ;
 int hxxx_iterator_init (TYPE_1__*,int ,size_t,int ) ;
 int rtp_packetize_h264_nal (int *,int const*,size_t,scalar_t__,scalar_t__,int,size_t) ;

__attribute__((used)) static int rtp_packetize_h264( sout_stream_id_sys_t *id, block_t *in )
{
    hxxx_iterator_ctx_t it;
    hxxx_iterator_init( &it, in->p_buffer, in->i_buffer, 0 );

    const uint8_t *p_nal;
    size_t i_nal;
    while( hxxx_annexb_iterate_next( &it, &p_nal, &i_nal ) )
    {

        rtp_packetize_h264_nal( id, p_nal, i_nal,
                (in->i_pts != VLC_TICK_INVALID ? in->i_pts : in->i_dts), in->i_dts,
                it.p_head + 3 >= it.p_tail, in->i_length * i_nal / in->i_buffer );
    }

    block_Release(in);
    return VLC_SUCCESS;
}
