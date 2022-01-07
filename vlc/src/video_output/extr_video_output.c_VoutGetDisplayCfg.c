
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_12__ {void* vertical; void* horizontal; } ;
struct TYPE_11__ {unsigned int num; unsigned int den; } ;
struct TYPE_9__ {unsigned int num; unsigned int den; } ;
struct TYPE_10__ {int width; int height; TYPE_1__ sar; } ;
struct TYPE_13__ {TYPE_4__ align; TYPE_3__ zoom; TYPE_2__ display; int is_display_filled; int viewpoint; } ;
typedef TYPE_5__ vout_display_cfg_t ;
struct TYPE_14__ {int pose; } ;
typedef TYPE_6__ video_format_t ;


 void* VLC_VIDEO_ALIGN_BOTTOM ;
 void* VLC_VIDEO_ALIGN_CENTER ;
 void* VLC_VIDEO_ALIGN_LEFT ;
 void* VLC_VIDEO_ALIGN_RIGHT ;
 void* VLC_VIDEO_ALIGN_TOP ;
 int const VOUT_ALIGN_BOTTOM ;
 int const VOUT_ALIGN_LEFT ;
 int const VOUT_ALIGN_RIGHT ;
 int const VOUT_ALIGN_TOP ;
 int var_GetBool (int *,char*) ;
 unsigned int var_GetFloat (int *,char*) ;
 int var_GetInteger (int *,char*) ;
 scalar_t__ var_InheritURational (int *,unsigned int*,unsigned int*,char*) ;
 int vlc_ureduce (unsigned int*,unsigned int*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void VoutGetDisplayCfg(vout_thread_t *vout, const video_format_t *fmt, vout_display_cfg_t *cfg)
{

    cfg->viewpoint = fmt->pose;

    const int display_width = var_GetInteger(vout, "width");
    const int display_height = var_GetInteger(vout, "height");
    cfg->display.width = display_width > 0 ? display_width : 0;
    cfg->display.height = display_height > 0 ? display_height : 0;
    cfg->is_display_filled = var_GetBool(vout, "autoscale");
    unsigned msar_num, msar_den;
    if (var_InheritURational(vout, &msar_num, &msar_den, "monitor-par") ||
        msar_num <= 0 || msar_den <= 0) {
        msar_num = 1;
        msar_den = 1;
    }
    cfg->display.sar.num = msar_num;
    cfg->display.sar.den = msar_den;
    unsigned zoom_den = 1000;
    unsigned zoom_num = zoom_den * var_GetFloat(vout, "zoom");
    vlc_ureduce(&zoom_num, &zoom_den, zoom_num, zoom_den, 0);
    cfg->zoom.num = zoom_num;
    cfg->zoom.den = zoom_den;
    cfg->align.vertical = VLC_VIDEO_ALIGN_CENTER;
    cfg->align.horizontal = VLC_VIDEO_ALIGN_CENTER;
    const int align_mask = var_GetInteger(vout, "align");
    if (align_mask & VOUT_ALIGN_LEFT)
        cfg->align.horizontal = VLC_VIDEO_ALIGN_LEFT;
    else if (align_mask & VOUT_ALIGN_RIGHT)
        cfg->align.horizontal = VLC_VIDEO_ALIGN_RIGHT;
    if (align_mask & VOUT_ALIGN_TOP)
        cfg->align.vertical = VLC_VIDEO_ALIGN_TOP;
    else if (align_mask & VOUT_ALIGN_BOTTOM)
        cfg->align.vertical = VLC_VIDEO_ALIGN_BOTTOM;
}
