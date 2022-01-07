
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pps_seq_parameter_set_id; } ;
typedef TYPE_1__ hevc_picture_parameter_set_t ;



uint8_t hevc_get_pps_sps_id( const hevc_picture_parameter_set_t *p_pps )
{
    return p_pps->pps_seq_parameter_set_id;
}
