
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slice_type; int dependent_slice_segment_flag; } ;
typedef TYPE_1__ hevc_slice_segment_header_t ;
typedef enum hevc_slice_type_e { ____Placeholder_hevc_slice_type_e } hevc_slice_type_e ;



bool hevc_get_slice_type( const hevc_slice_segment_header_t *p_sli, enum hevc_slice_type_e *pi_type )
{
    if( !p_sli->dependent_slice_segment_flag )
    {
        *pi_type = p_sli->slice_type;
        return 1;
    }
    return 0;
}
