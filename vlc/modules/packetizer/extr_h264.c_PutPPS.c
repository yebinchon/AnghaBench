
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {size_t i_id; int i_sps_id; } ;
typedef TYPE_2__ h264_picture_parameter_set_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_18__ {TYPE_1__* pps; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_19__ {size_t i_buffer; int * p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_15__ {int p_pps; } ;


 int StorePPS (TYPE_4__*,size_t,TYPE_5__*,TYPE_2__*) ;
 int block_Release (TYPE_5__*) ;
 TYPE_2__* h264_decode_pps (int const*,size_t,int) ;
 int hxxx_strip_AnnexB_startcode (int const**,size_t*) ;
 int msg_Dbg (TYPE_3__*,char*,size_t,int ) ;
 int msg_Warn (TYPE_3__*,char*) ;

__attribute__((used)) static void PutPPS( decoder_t *p_dec, block_t *p_frag )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    const uint8_t *p_buffer = p_frag->p_buffer;
    size_t i_buffer = p_frag->i_buffer;

    if( !hxxx_strip_AnnexB_startcode( &p_buffer, &i_buffer ) )
    {
        block_Release( p_frag );
        return;
    }

    h264_picture_parameter_set_t *p_pps = h264_decode_pps( p_buffer, i_buffer, 1 );
    if( !p_pps )
    {
        msg_Warn( p_dec, "invalid PPS" );
        block_Release( p_frag );
        return;
    }


    if( !p_sys->pps[p_pps->i_id].p_pps )
        msg_Dbg( p_dec, "found NAL_PPS (pps_id=%d sps_id=%d)", p_pps->i_id, p_pps->i_sps_id );

    StorePPS( p_sys, p_pps->i_id, p_frag, p_pps );
}
