
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t vps_max_sub_layers_minus1; TYPE_1__* vps_max; } ;
typedef TYPE_2__ hevc_video_parameter_set_t ;
struct TYPE_4__ {int num_reorder_pics; } ;



uint8_t hevc_get_max_num_reorder( const hevc_video_parameter_set_t *p_vps )
{
    return p_vps->vps_max[p_vps->vps_max_sub_layers_minus1 ].num_reorder_pics;
}
