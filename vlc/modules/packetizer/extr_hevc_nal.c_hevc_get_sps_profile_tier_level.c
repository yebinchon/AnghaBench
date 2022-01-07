
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ profile_idc; } ;
struct TYPE_6__ {scalar_t__ general_level_idc; TYPE_1__ general; } ;
struct TYPE_7__ {TYPE_2__ profile_tier_level; } ;
typedef TYPE_3__ hevc_sequence_parameter_set_t ;



bool hevc_get_sps_profile_tier_level( const hevc_sequence_parameter_set_t *p_sps,
                                      uint8_t *pi_profile, uint8_t *pi_level)
{
    if(p_sps->profile_tier_level.general.profile_idc)
    {
        *pi_profile = p_sps->profile_tier_level.general.profile_idc;
        *pi_level = p_sps->profile_tier_level.general_level_idc;
        return 1;
    }
    return 0;
}
