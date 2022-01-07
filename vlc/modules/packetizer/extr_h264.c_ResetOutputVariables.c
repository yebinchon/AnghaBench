
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int b_new_sps; int b_new_pps; int b_slice; int i_recovery_frame_cnt; int i_pic_struct; scalar_t__ i_dpb_output_delay; TYPE_1__ slice; void* i_frame_pts; void* i_frame_dts; } ;
typedef TYPE_2__ decoder_sys_t ;


 int H264_SLICE_TYPE_UNKNOWN ;
 int UINT8_MAX ;
 int UINT_MAX ;
 void* VLC_TICK_INVALID ;

__attribute__((used)) static void ResetOutputVariables( decoder_sys_t *p_sys )
{
    p_sys->i_frame_dts = VLC_TICK_INVALID;
    p_sys->i_frame_pts = VLC_TICK_INVALID;
    p_sys->slice.type = H264_SLICE_TYPE_UNKNOWN;
    p_sys->b_new_sps = 0;
    p_sys->b_new_pps = 0;
    p_sys->b_slice = 0;

    p_sys->i_dpb_output_delay = 0;
    p_sys->i_pic_struct = UINT8_MAX;
    p_sys->i_recovery_frame_cnt = UINT_MAX;
}
