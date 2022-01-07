
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ bit_depth_chroma_minus8; scalar_t__ chroma_format_idc; } ;
typedef TYPE_1__ hevc_sequence_parameter_set_t ;



bool hevc_get_chroma_luma( const hevc_sequence_parameter_set_t *p_sps, uint8_t *pi_chroma_format,
                           uint8_t *pi_depth_luma, uint8_t *pi_depth_chroma )
{
    *pi_chroma_format = p_sps->chroma_format_idc;
    *pi_depth_luma = p_sps->bit_depth_chroma_minus8 + 8;
    *pi_depth_chroma = p_sps->bit_depth_chroma_minus8 + 8;
    return 1;
}
