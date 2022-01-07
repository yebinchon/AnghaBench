
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int slice_pic_parameter_set_id; } ;
typedef TYPE_1__ hevc_slice_segment_header_t ;



uint8_t hevc_get_slice_pps_id( const hevc_slice_segment_header_t *p_slice )
{
    return p_slice->slice_pic_parameter_set_id;
}
