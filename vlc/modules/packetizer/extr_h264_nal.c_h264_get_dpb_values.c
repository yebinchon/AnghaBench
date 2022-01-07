
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int b_bitstream_restriction_flag; int i_max_num_reorder_frames; } ;
struct TYPE_6__ {int i_profile; int i_constraint_set_flags; TYPE_1__ vui; } ;
typedef TYPE_2__ h264_sequence_parameter_set_t ;


 int H264_CONSTRAINT_SET_FLAG (int) ;







 int h264_get_max_dpb_frames (TYPE_2__ const*) ;

bool h264_get_dpb_values( const h264_sequence_parameter_set_t *p_sps,
                          uint8_t *pi_depth, unsigned *pi_delay )
{
    uint8_t i_max_num_reorder_frames = p_sps->vui.i_max_num_reorder_frames;
    if( !p_sps->vui.b_bitstream_restriction_flag )
    {
        switch( p_sps->i_profile )
        {
            case 134:
                i_max_num_reorder_frames = 0;
                break;
            case 133:
            case 128:
            case 132:
            case 131:
            case 130:
            case 129:
                if( p_sps->i_constraint_set_flags & H264_CONSTRAINT_SET_FLAG(3) )
                {
                    i_max_num_reorder_frames = 0;
                    break;
                }

            default:
                i_max_num_reorder_frames = h264_get_max_dpb_frames( p_sps );
                break;
        }
    }

    *pi_depth = i_max_num_reorder_frames;
    *pi_delay = 0;

    return 1;
}
