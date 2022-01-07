
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int sps_video_parameter_set_id; } ;
typedef TYPE_1__ hevc_sequence_parameter_set_t ;



uint8_t hevc_get_sps_vps_id( const hevc_sequence_parameter_set_t *p_sps )
{
    return p_sps->sps_video_parameter_set_id;
}
