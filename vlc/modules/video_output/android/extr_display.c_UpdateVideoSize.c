
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_awh; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_8__ {unsigned int i_sar_num; unsigned int i_sar_den; unsigned int i_width; unsigned int i_height; int i_visible_height; int i_visible_width; } ;
typedef TYPE_2__ video_format_t ;


 int AWindowHandler_setVideoLayout (int ,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int) ;
 int video_format_ApplyRotation (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int UpdateVideoSize(vout_display_sys_t *sys, video_format_t *p_fmt)
{
    unsigned int i_width, i_height;
    unsigned int i_sar_num = 1, i_sar_den = 1;
    video_format_t rot_fmt;

    video_format_ApplyRotation(&rot_fmt, p_fmt);

    if (rot_fmt.i_sar_num != 0 && rot_fmt.i_sar_den != 0) {
        i_sar_num = rot_fmt.i_sar_num;
        i_sar_den = rot_fmt.i_sar_den;
    }
    i_width = rot_fmt.i_width;
    i_height = rot_fmt.i_height;

    AWindowHandler_setVideoLayout(sys->p_awh, i_width, i_height,
                                  rot_fmt.i_visible_width,
                                  rot_fmt.i_visible_height,
                                  i_sar_num, i_sar_den);
    return 0;
}
