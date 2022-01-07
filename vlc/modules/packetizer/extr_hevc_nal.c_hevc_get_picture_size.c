
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int bottom_offset; unsigned int top_offset; unsigned int left_offset; unsigned int right_offset; } ;
struct TYPE_5__ {unsigned int pic_width_in_luma_samples; unsigned int pic_height_in_luma_samples; int chroma_format_idc; TYPE_1__ conf_win; scalar_t__ conformance_window_flag; } ;
typedef TYPE_2__ hevc_sequence_parameter_set_t ;



bool hevc_get_picture_size( const hevc_sequence_parameter_set_t *p_sps,
                            unsigned *p_w, unsigned *p_h, unsigned *p_vw, unsigned *p_vh )
{
    *p_w = *p_vw = p_sps->pic_width_in_luma_samples;
    *p_h = *p_vh = p_sps->pic_height_in_luma_samples;
    if( p_sps->conformance_window_flag )
    {
        unsigned sub_width_c, sub_height_c;

        if( p_sps->chroma_format_idc == 1 )
        {
            sub_width_c = 2;
            sub_height_c = 2;
        }
        else if( p_sps->chroma_format_idc == 2 )
        {
            sub_width_c = 2;
            sub_height_c = 1;
        }
        else
        {
            sub_width_c = 1;
            sub_height_c = 1;
        }

        *p_vh -= (p_sps->conf_win.bottom_offset + p_sps->conf_win.top_offset) * sub_height_c;
        *p_vw -= (p_sps->conf_win.left_offset + p_sps->conf_win.right_offset) * sub_width_c;
    }
    return 1;
}
