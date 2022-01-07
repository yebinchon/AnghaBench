
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_transfer_func_t ;
typedef int video_color_space_t ;
typedef int video_color_range_t ;
typedef int video_color_primaries_t ;
struct TYPE_6__ {int matrix_coeffs; int transfer_characteristics; int colour_primaries; } ;
struct TYPE_7__ {scalar_t__ video_full_range_flag; TYPE_1__ colour; } ;
struct TYPE_8__ {TYPE_2__ vs; } ;
struct TYPE_9__ {TYPE_3__ vui; int vui_parameters_present_flag; } ;
typedef TYPE_4__ hevc_sequence_parameter_set_t ;


 int COLOR_RANGE_FULL ;
 int COLOR_RANGE_LIMITED ;
 int iso_23001_8_cp_to_vlc_primaries (int ) ;
 int iso_23001_8_mc_to_vlc_coeffs (int ) ;
 int iso_23001_8_tc_to_vlc_xfer (int ) ;

bool hevc_get_colorimetry( const hevc_sequence_parameter_set_t *p_sps,
                           video_color_primaries_t *p_primaries,
                           video_transfer_func_t *p_transfer,
                           video_color_space_t *p_colorspace,
                           video_color_range_t *p_full_range )
{
    if( !p_sps->vui_parameters_present_flag )
        return 0;
    *p_primaries =
        iso_23001_8_cp_to_vlc_primaries( p_sps->vui.vs.colour.colour_primaries );
    *p_transfer =
        iso_23001_8_tc_to_vlc_xfer( p_sps->vui.vs.colour.transfer_characteristics );
    *p_colorspace =
        iso_23001_8_mc_to_vlc_coeffs( p_sps->vui.vs.colour.matrix_coeffs );
    *p_full_range = p_sps->vui.vs.video_full_range_flag ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    return 1;
}
