
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {void* vui_time_scale; void* vui_num_units_in_tick; } ;
struct TYPE_13__ {void* win_bottom_offset; void* win_top_offset; void* win_right_offset; void* win_left_offset; } ;
struct TYPE_12__ {void* sample_loc_type_bottom_field; void* sample_loc_type_top_field; } ;
struct TYPE_10__ {void* matrix_coeffs; void* transfer_characteristics; void* colour_primaries; } ;
struct TYPE_11__ {TYPE_2__ colour; void* colour_description_present_flag; void* video_full_range_flag; void* video_format; } ;
struct TYPE_9__ {int aspect_ratio_idc; void* sar_height; void* sar_width; } ;
struct TYPE_15__ {int default_display_window_flag; TYPE_6__ timing; void* vui_timing_info_present_flag; TYPE_5__ def_disp; void* frame_field_info_present_flag; void* field_seq_flag; void* neutral_chroma_indication_flag; TYPE_4__ chroma; void* chroma_loc_info_present_flag; TYPE_3__ vs; void* video_signal_type_present_flag; void* overscan_appropriate_flag; void* overscan_info_present_flag; TYPE_1__ ar; void* aspect_ratio_info_present_flag; } ;
typedef TYPE_7__ hevc_vui_parameters_t ;
typedef int bs_t ;


 void* ISO_23001_8_CP_UNSPECIFIED ;
 void* ISO_23001_8_MC_UNSPECIFIED ;
 void* ISO_23001_8_TC_UNSPECIFIED ;
 void* bs_read (int *,int) ;
 void* bs_read1 (int *) ;
 void* bs_read_ue (int *) ;
 int bs_remain (int *) ;

__attribute__((used)) static bool hevc_parse_vui_parameters_rbsp( bs_t *p_bs, hevc_vui_parameters_t *p_vui,
                                            bool b_broken )
{
    if( bs_remain( p_bs ) < 10 )
        return 0;

    p_vui->aspect_ratio_info_present_flag = bs_read1( p_bs );
    if( p_vui->aspect_ratio_info_present_flag )
    {
        p_vui->ar.aspect_ratio_idc = bs_read( p_bs, 8 );
        if( p_vui->ar.aspect_ratio_idc == 0xFF )
        {
            p_vui->ar.sar_width = bs_read( p_bs, 16 );
            p_vui->ar.sar_height = bs_read( p_bs, 16 );
        }
    }

    p_vui->overscan_info_present_flag = bs_read1( p_bs );
    if( p_vui->overscan_info_present_flag )
        p_vui->overscan_appropriate_flag = bs_read1( p_bs );

    p_vui->video_signal_type_present_flag = bs_read1( p_bs );
    if( p_vui->video_signal_type_present_flag )
    {
        p_vui->vs.video_format = bs_read( p_bs, 3 );
        p_vui->vs.video_full_range_flag = bs_read1( p_bs );
        p_vui->vs.colour_description_present_flag = bs_read1( p_bs );
        if( p_vui->vs.colour_description_present_flag )
        {
            p_vui->vs.colour.colour_primaries = bs_read( p_bs, 8 );
            p_vui->vs.colour.transfer_characteristics = bs_read( p_bs, 8 );
            p_vui->vs.colour.matrix_coeffs = bs_read( p_bs, 8 );
        }
        else
        {
            p_vui->vs.colour.colour_primaries = ISO_23001_8_CP_UNSPECIFIED;
            p_vui->vs.colour.transfer_characteristics = ISO_23001_8_TC_UNSPECIFIED;
            p_vui->vs.colour.matrix_coeffs = ISO_23001_8_MC_UNSPECIFIED;
        }
    }

    p_vui->chroma_loc_info_present_flag = bs_read1( p_bs );
    if( p_vui->chroma_loc_info_present_flag )
    {
        p_vui->chroma.sample_loc_type_top_field = bs_read_ue( p_bs );
        p_vui->chroma.sample_loc_type_bottom_field = bs_read_ue( p_bs );
    }

    p_vui->neutral_chroma_indication_flag = bs_read1( p_bs );
    p_vui->field_seq_flag = bs_read1( p_bs );
    p_vui->frame_field_info_present_flag = bs_read1( p_bs );

    p_vui->default_display_window_flag = !b_broken && bs_read1( p_bs );
    if( p_vui->default_display_window_flag )
    {
        p_vui->def_disp.win_left_offset = bs_read_ue( p_bs );
        p_vui->def_disp.win_right_offset = bs_read_ue( p_bs );
        p_vui->def_disp.win_top_offset = bs_read_ue( p_bs );
        p_vui->def_disp.win_bottom_offset = bs_read_ue( p_bs );
    }

    p_vui->vui_timing_info_present_flag = bs_read1( p_bs );
    if( p_vui->vui_timing_info_present_flag )
    {
        p_vui->timing.vui_num_units_in_tick = bs_read( p_bs, 32 );
        p_vui->timing.vui_time_scale = bs_read( p_bs, 32 );

        if( bs_remain( p_bs ) < 3 )
            return 0;
    }


    if( bs_remain( p_bs ) < 1 )
        return 0;

    return 1;
}
