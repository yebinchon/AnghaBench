
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int h264_sequence_parameter_set_t ;
struct TYPE_8__ {size_t i_sps_id; } ;
typedef TYPE_3__ h264_picture_parameter_set_t ;
struct TYPE_9__ {TYPE_2__* sps; TYPE_1__* pps; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_7__ {int * p_sps; } ;
struct TYPE_6__ {TYPE_3__* p_pps; } ;



__attribute__((used)) static void GetSPSPPS( uint8_t i_pps_id, void *priv,
                       const h264_sequence_parameter_set_t **pp_sps,
                       const h264_picture_parameter_set_t **pp_pps )
{
    decoder_sys_t *p_sys = priv;

    *pp_pps = p_sys->pps[i_pps_id].p_pps;
    if( *pp_pps == ((void*)0) )
        *pp_sps = ((void*)0);
    else
        *pp_sps = p_sys->sps[(*pp_pps)->i_sps_id].p_sps;
}
