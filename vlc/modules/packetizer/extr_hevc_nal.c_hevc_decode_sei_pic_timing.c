
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ frame_field_info_present_flag; } ;
struct TYPE_8__ {TYPE_1__ vui; } ;
typedef TYPE_2__ hevc_sequence_parameter_set_t ;
struct TYPE_9__ {int source_scan_type; void* pic_struct; } ;
typedef TYPE_3__ hevc_sei_pic_timing_t ;
typedef int bs_t ;


 void* bs_read (int *,int) ;
 TYPE_3__* malloc (int) ;

hevc_sei_pic_timing_t * hevc_decode_sei_pic_timing( bs_t *p_bs,
                                                    const hevc_sequence_parameter_set_t *p_sps )
{
    hevc_sei_pic_timing_t *p_timing = malloc(sizeof(*p_timing));
    if( p_timing )
    {
        if( p_sps->vui.frame_field_info_present_flag )
        {
            p_timing->pic_struct = bs_read( p_bs, 4 );
            p_timing->source_scan_type = bs_read( p_bs, 2 );
        }
        else
        {
            p_timing->pic_struct = 0;
            p_timing->source_scan_type = 1;
        }
    }
    return p_timing;
}
