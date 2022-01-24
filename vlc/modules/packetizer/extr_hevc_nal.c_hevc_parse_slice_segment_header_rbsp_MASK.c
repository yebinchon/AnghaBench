#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* pf_get_matchedxps ) (scalar_t__,void*,TYPE_1__**,TYPE_2__**,int /*<<< orphan*/ **) ;
typedef  int /*<<< orphan*/  hevc_video_parameter_set_t ;
struct TYPE_12__ {scalar_t__ nal_type; scalar_t__ slice_pic_parameter_set_id; scalar_t__ slice_type; int pic_output_flag; int /*<<< orphan*/  pic_order_cnt_lsb; void* dependent_slice_segment_flag; void* first_slice_segment_in_pic_flag; void* no_output_of_prior_pics_flag; } ;
typedef  TYPE_3__ hevc_slice_segment_header_t ;
struct TYPE_11__ {scalar_t__ log2_max_pic_order_cnt_lsb_minus4; scalar_t__ separate_colour_plane_flag; } ;
typedef  TYPE_2__ hevc_sequence_parameter_set_t ;
struct TYPE_10__ {unsigned int num_extra_slice_header_bits; scalar_t__ output_flag_present_flag; scalar_t__ dependent_slice_segments_enabled_flag; } ;
typedef  TYPE_1__ hevc_picture_parameter_set_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 scalar_t__ HEVC_NAL_BLA_W_LP ; 
 scalar_t__ HEVC_NAL_IDR_N_LP ; 
 scalar_t__ HEVC_NAL_IDR_W_RADL ; 
 scalar_t__ HEVC_NAL_IRAP_VCL23 ; 
 scalar_t__ HEVC_PPS_ID_MAX ; 
 scalar_t__ HEVC_SLICE_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static bool FUNC7( bs_t *p_bs,
                                                  pf_get_matchedxps get_matchedxps,
                                                  void *priv,
                                                  hevc_slice_segment_header_t *p_sl )
{
    hevc_sequence_parameter_set_t *p_sps;
    hevc_picture_parameter_set_t *p_pps;
    hevc_video_parameter_set_t *p_vps;

    if( FUNC3( p_bs ) < 3 )
        return false;

    p_sl->first_slice_segment_in_pic_flag = FUNC1( p_bs );
    if( p_sl->nal_type >= HEVC_NAL_BLA_W_LP && p_sl->nal_type <= HEVC_NAL_IRAP_VCL23 )
        p_sl->no_output_of_prior_pics_flag = FUNC1( p_bs );
    p_sl->slice_pic_parameter_set_id = FUNC2( p_bs );
    if( p_sl->slice_pic_parameter_set_id > HEVC_PPS_ID_MAX || FUNC3( p_bs ) < 1 )
        return false;

    get_matchedxps( p_sl->slice_pic_parameter_set_id, priv, &p_pps, &p_sps, &p_vps );
    if(!p_sps || !p_pps)
        return false;

    if( !p_sl->first_slice_segment_in_pic_flag )
    {
        if( p_pps->dependent_slice_segments_enabled_flag )
            p_sl->dependent_slice_segment_flag = FUNC1( p_bs );

        unsigned w, h;
        if( !FUNC5( p_sps, &w, &h ) )
            return false;

        (void) FUNC0( p_bs, FUNC6( w * h ) ); /* slice_segment_address */
    }

    if( !p_sl->dependent_slice_segment_flag )
    {
        unsigned i=0;
        if( p_pps->num_extra_slice_header_bits > i )
        {
            i++;
            FUNC4( p_bs, 1 ); /* discardable_flag */
        }

        if( p_pps->num_extra_slice_header_bits > i )
        {
            i++;
            FUNC4( p_bs, 1 ); /* cross_layer_bla_flag */
        }

        if( i < p_pps->num_extra_slice_header_bits )
           FUNC4( p_bs, p_pps->num_extra_slice_header_bits - i );

        p_sl->slice_type = FUNC2( p_bs );
        if( p_sl->slice_type > HEVC_SLICE_TYPE_I )
            return false;

        if( p_pps->output_flag_present_flag )
            p_sl->pic_output_flag = FUNC1( p_bs );
        else
            p_sl->pic_output_flag = 1;
    }

    if( p_sps->separate_colour_plane_flag )
        FUNC4( p_bs, 2 ); /* colour_plane_id */

    if( p_sl->nal_type != HEVC_NAL_IDR_W_RADL && p_sl->nal_type != HEVC_NAL_IDR_N_LP )
        p_sl->pic_order_cnt_lsb = FUNC0( p_bs, p_sps->log2_max_pic_order_cnt_lsb_minus4 + 4 );
    else
        p_sl->pic_order_cnt_lsb = 0;

    if( FUNC3( p_bs ) < 1 )
        return false;

    return true;
}