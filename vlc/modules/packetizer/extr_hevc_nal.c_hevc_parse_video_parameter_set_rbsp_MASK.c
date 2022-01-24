#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int vps_max_sub_layers_minus1; int vps_max_layer_id; int vps_num_layer_set_minus1; void* vps_time_scale; void* vps_num_units_in_tick; void* vps_timing_info_present_flag; TYPE_1__* vps_max; void* vps_sub_layer_ordering_info_present_flag; int /*<<< orphan*/  profile_tier_level; void* vps_temporal_id_nesting_flag; void* vps_max_layers_minus1; void* vps_base_layer_available_flag; void* vps_base_layer_internal_flag; void* vps_video_parameter_set_id; } ;
typedef  TYPE_2__ hevc_video_parameter_set_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_4__ {void* max_latency_increase_plus1; void* num_reorder_pics; void* dec_pic_buffering_minus1; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6( bs_t *p_bs,
                                                 hevc_video_parameter_set_t *p_vps )
{
    if( FUNC3( p_bs ) < 134 )
        return false;

    p_vps->vps_video_parameter_set_id = FUNC0( p_bs, 4 );
    p_vps->vps_base_layer_internal_flag = FUNC1( p_bs );
    p_vps->vps_base_layer_available_flag = FUNC1( p_bs );
    p_vps->vps_max_layers_minus1 = FUNC0( p_bs, 6 );
    p_vps->vps_max_sub_layers_minus1 = FUNC0( p_bs, 3 );
    p_vps->vps_temporal_id_nesting_flag = FUNC1( p_bs );
    FUNC4( p_bs, 16 );

    if( !FUNC5( p_bs, true, p_vps->vps_max_sub_layers_minus1,
                                            &p_vps->profile_tier_level ) )
        return false;

    p_vps->vps_sub_layer_ordering_info_present_flag = FUNC1( p_bs );
    for( unsigned i= (p_vps->vps_sub_layer_ordering_info_present_flag ?
                      0 : p_vps->vps_max_sub_layers_minus1);
         i<= p_vps->vps_max_sub_layers_minus1; i++ )
    {
        p_vps->vps_max[i].dec_pic_buffering_minus1 = FUNC2( p_bs );
        p_vps->vps_max[i].num_reorder_pics = FUNC2( p_bs );
        p_vps->vps_max[i].max_latency_increase_plus1 = FUNC2( p_bs );
    }
    if( FUNC3( p_bs ) < 10 )
        return false;

    p_vps->vps_max_layer_id = FUNC0( p_bs, 6 );
    p_vps->vps_num_layer_set_minus1 = FUNC2( p_bs );
    // layer_id_included_flag; read but discarded
    FUNC4( p_bs, p_vps->vps_num_layer_set_minus1 * (p_vps->vps_max_layer_id + 1) );
    if( FUNC3( p_bs ) < 2 )
        return false;

    p_vps->vps_timing_info_present_flag = FUNC1( p_bs );
    if( p_vps->vps_timing_info_present_flag )
    {
        p_vps->vps_num_units_in_tick = FUNC0( p_bs, 32 );
        p_vps->vps_time_scale = FUNC0( p_bs, 32 );
    }
    /* parsing incomplete */

    if( FUNC3( p_bs ) < 1 )
        return false;

    return true;
}