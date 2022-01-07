
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_transfer_func_t ;
typedef int video_color_space_t ;
typedef int video_color_range_t ;
typedef int video_color_primaries_t ;
struct TYPE_6__ {scalar_t__ b_full_range; int i_matrix_coefficients; int i_transfer_characteristics; int i_colour_primaries; } ;
struct TYPE_5__ {TYPE_2__ colour; int b_valid; } ;
struct TYPE_7__ {TYPE_1__ vui; } ;
typedef TYPE_3__ h264_sequence_parameter_set_t ;


 int COLOR_RANGE_FULL ;
 int COLOR_RANGE_LIMITED ;
 int iso_23001_8_cp_to_vlc_primaries (int ) ;
 int iso_23001_8_mc_to_vlc_coeffs (int ) ;
 int iso_23001_8_tc_to_vlc_xfer (int ) ;

bool h264_get_colorimetry( const h264_sequence_parameter_set_t *p_sps,
                           video_color_primaries_t *p_primaries,
                           video_transfer_func_t *p_transfer,
                           video_color_space_t *p_colorspace,
                           video_color_range_t *p_full_range )
{
    if( !p_sps->vui.b_valid )
        return 0;
    *p_primaries =
        iso_23001_8_cp_to_vlc_primaries( p_sps->vui.colour.i_colour_primaries );
    *p_transfer =
        iso_23001_8_tc_to_vlc_xfer( p_sps->vui.colour.i_transfer_characteristics );
    *p_colorspace =
        iso_23001_8_mc_to_vlc_coeffs( p_sps->vui.colour.i_matrix_coefficients );
    *p_full_range = p_sps->vui.colour.b_full_range ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    return 1;
}
