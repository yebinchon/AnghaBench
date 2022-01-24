#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {void* i_redundant_pic_present_flag; void* weighted_bipred_idc; void* weighted_pred_flag; void* i_pic_order_present_flag; scalar_t__ i_sps_id; scalar_t__ i_id; } ;
typedef  TYPE_1__ h264_picture_parameter_set_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 scalar_t__ H264_PPS_ID_MAX ; 
 scalar_t__ H264_SPS_ID_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bool FUNC5( bs_t *p_bs,
                                                   h264_picture_parameter_set_t *p_pps )
{
    uint32_t i_pps_id = FUNC3( p_bs ); // pps id
    uint32_t i_sps_id = FUNC3( p_bs ); // sps id
    if( i_pps_id > H264_PPS_ID_MAX || i_sps_id > H264_SPS_ID_MAX )
        return false;
    p_pps->i_id = i_pps_id;
    p_pps->i_sps_id = i_sps_id;

    FUNC4( p_bs, 1 ); // entropy coding mode flag
    p_pps->i_pic_order_present_flag = FUNC0( p_bs, 1 );

    unsigned num_slice_groups = FUNC3( p_bs ) + 1;
    if( num_slice_groups > 8 ) /* never has value > 7. Annex A, G & J */
        return false;
    if( num_slice_groups > 1 )
    {
        unsigned slice_group_map_type = FUNC3( p_bs );
        if( slice_group_map_type == 0 )
        {
            for( unsigned i = 0; i < num_slice_groups; i++ )
                FUNC3( p_bs ); /* run_length_minus1[group] */
        }
        else if( slice_group_map_type == 2 )
        {
            for( unsigned i = 0; i < num_slice_groups; i++ )
            {
                FUNC3( p_bs ); /* top_left[group] */
                FUNC3( p_bs ); /* bottom_right[group] */
            }
        }
        else if( slice_group_map_type > 2 && slice_group_map_type < 6 )
        {
            FUNC1( p_bs );   /* slice_group_change_direction_flag */
            FUNC3( p_bs ); /* slice_group_change_rate_minus1 */
        }
        else if( slice_group_map_type == 6 )
        {
            unsigned pic_size_in_maps_units = FUNC3( p_bs ) + 1;
            unsigned sliceGroupSize = 1;
            while(num_slice_groups > 1)
            {
                sliceGroupSize++;
                num_slice_groups = ((num_slice_groups - 1) >> 1) + 1;
            }
            for( unsigned i = 0; i < pic_size_in_maps_units; i++ )
            {
                FUNC4( p_bs, sliceGroupSize );
            }
        }
    }

    FUNC3( p_bs ); /* num_ref_idx_l0_default_active_minus1 */
    FUNC3( p_bs ); /* num_ref_idx_l1_default_active_minus1 */
    p_pps->weighted_pred_flag = FUNC0( p_bs, 1 );
    p_pps->weighted_bipred_idc = FUNC0( p_bs, 2 );
    FUNC2( p_bs ); /* pic_init_qp_minus26 */
    FUNC2( p_bs ); /* pic_init_qs_minus26 */
    FUNC2( p_bs ); /* chroma_qp_index_offset */
    FUNC0( p_bs, 1 ); /* deblocking_filter_control_present_flag */
    FUNC0( p_bs, 1 ); /* constrained_intra_pred_flag */
    p_pps->i_redundant_pic_present_flag = FUNC0( p_bs, 1 );

    /* TODO */

    return true;
}