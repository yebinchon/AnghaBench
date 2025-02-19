
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__ const* vlc_tick_t ;
struct TYPE_14__ {int i_width; int i_sar_num; int i_sar_den; int i_visible_width; int i_x_offset; int i_visible_height; } ;
typedef TYPE_2__ video_format_t ;
struct TYPE_13__ {TYPE_5__* p_sys; } ;
struct TYPE_15__ {int i_original_picture_width; int p_region; int i_original_picture_height; TYPE_1__ updater; } ;
typedef TYPE_4__ subpicture_t ;
struct TYPE_16__ {scalar_t__ type; int position; } ;
typedef TYPE_5__ osdwidget_spu_updater_sys_t ;


 int OSDIcon (scalar_t__,TYPE_2__*) ;
 int OSDSlider (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ OSD_HOR_SLIDER ;
 scalar_t__ OSD_VERT_SLIDER ;
 int VLC_UNUSED (TYPE_2__ const*) ;

__attribute__((used)) static void OSDWidgetUpdate(subpicture_t *subpic,
                          const video_format_t *fmt_src,
                          const video_format_t *fmt_dst,
                          vlc_tick_t ts)
{
    osdwidget_spu_updater_sys_t *sys = subpic->updater.p_sys;
    VLC_UNUSED(fmt_src); VLC_UNUSED(ts);

    video_format_t fmt = *fmt_dst;
    fmt.i_width = fmt.i_width * fmt.i_sar_num / fmt.i_sar_den;
    fmt.i_visible_width = fmt.i_visible_width * fmt.i_sar_num / fmt.i_sar_den;
    fmt.i_x_offset = fmt.i_x_offset * fmt.i_sar_num / fmt.i_sar_den;
    fmt.i_sar_num = 1;
    fmt.i_sar_den = 1;

    subpic->i_original_picture_width = fmt.i_visible_width;
    subpic->i_original_picture_height = fmt.i_visible_height;
    if (sys->type == OSD_HOR_SLIDER || sys->type == OSD_VERT_SLIDER)
        subpic->p_region = OSDSlider(sys->type, sys->position, &fmt);
    else
        subpic->p_region = OSDIcon(sys->type, &fmt);
}
