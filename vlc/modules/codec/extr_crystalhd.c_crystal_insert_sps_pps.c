
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {scalar_t__ p_sps_pps_buf; int i_nal_size; scalar_t__ i_sps_pps_size; } ;
typedef TYPE_2__ decoder_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ h264_avcC_to_AnnexB_NAL (int *,int ,scalar_t__*,int *) ;

__attribute__((used)) static int crystal_insert_sps_pps( decoder_t *p_dec,
                                   uint8_t *p_buf,
                                   uint32_t i_buf_size)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->i_sps_pps_size = 0;
    p_sys->p_sps_pps_buf = h264_avcC_to_AnnexB_NAL( p_buf, i_buf_size,
                           &p_sys->i_sps_pps_size, &p_sys->i_nal_size );

    return (p_sys->p_sps_pps_buf) ? VLC_SUCCESS : VLC_EGENERIC;
}
