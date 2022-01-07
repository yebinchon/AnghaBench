
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_bit_depth_chroma; int i_bit_depth_luma; int i_chroma_idc; } ;
typedef TYPE_1__ h264_sequence_parameter_set_t ;



bool h264_get_chroma_luma( const h264_sequence_parameter_set_t *p_sps, uint8_t *pi_chroma_format,
                           uint8_t *pi_depth_luma, uint8_t *pi_depth_chroma )
{
    *pi_chroma_format = p_sps->i_chroma_idc;
    *pi_depth_luma = p_sps->i_bit_depth_luma;
    *pi_depth_chroma = p_sps->i_bit_depth_chroma;
    return 1;
}
