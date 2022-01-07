
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ frame_field_info_present_flag; scalar_t__ field_seq_flag; } ;
struct TYPE_12__ {scalar_t__ progressive_source_flag; scalar_t__ interlaced_source_flag; } ;
struct TYPE_9__ {TYPE_5__ general; } ;
struct TYPE_10__ {TYPE_1__ vui; TYPE_2__ profile_tier_level; scalar_t__ vui_parameters_present_flag; } ;
typedef TYPE_3__ hevc_sequence_parameter_set_t ;
struct TYPE_11__ {int source_scan_type; } ;
typedef TYPE_4__ hevc_sei_pic_timing_t ;
typedef TYPE_5__ hevc_inner_profile_tier_level_t ;



bool hevc_frame_is_progressive( const hevc_sequence_parameter_set_t *p_sps,
                                const hevc_sei_pic_timing_t *p_timing )
{
    if( p_sps->vui_parameters_present_flag &&
        p_sps->vui.field_seq_flag )
        return 0;

    const hevc_inner_profile_tier_level_t *p_profile = &p_sps->profile_tier_level.general;

    if( p_profile->progressive_source_flag != p_profile->interlaced_source_flag )
    {
        return p_profile->progressive_source_flag > p_profile->interlaced_source_flag;
    }

    else if( p_profile->progressive_source_flag )
    {
        if( p_timing && p_sps->vui.frame_field_info_present_flag )
        {
            if( p_timing->source_scan_type < 2 )
                return p_timing->source_scan_type != 0;
        }
    }


    return 1;
}
