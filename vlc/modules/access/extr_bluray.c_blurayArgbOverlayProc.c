
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_13__ {int lock; } ;
struct TYPE_15__ {TYPE_1__ bdj; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int cmd; int plane; int h; int w; } ;
typedef TYPE_4__ BD_ARGB_OVERLAY ;






 int blurayActivateOverlay (TYPE_2__*,int ) ;
 int blurayClearOverlay (TYPE_2__*,int ) ;
 int blurayCloseOverlay (TYPE_2__*,int ) ;
 int blurayDrawArgbOverlay (TYPE_2__*,TYPE_4__ const* const) ;
 int blurayInitArgbOverlay (TYPE_2__*,int ,int ,int ) ;
 int msg_Warn (TYPE_2__*,char*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void blurayArgbOverlayProc(void *ptr, const BD_ARGB_OVERLAY *const overlay)
{
    demux_t *p_demux = (demux_t*)ptr;
    demux_sys_t *p_sys = p_demux->p_sys;

    switch (overlay->cmd) {
    case 128:
        vlc_mutex_lock(&p_sys->bdj.lock);
        blurayInitArgbOverlay(p_demux, overlay->plane, overlay->w, overlay->h);
        vlc_mutex_unlock(&p_sys->bdj.lock);
        break;
    case 131:
        vlc_mutex_lock(&p_sys->bdj.lock);
        blurayClearOverlay(p_demux, overlay->plane);
        blurayCloseOverlay(p_demux, overlay->plane);
        vlc_mutex_unlock(&p_sys->bdj.lock);
        break;
    case 129:
        blurayActivateOverlay(p_demux, overlay->plane);
        break;
    case 130:
        blurayDrawArgbOverlay(p_demux, overlay);
        break;
    default:
        msg_Warn(p_demux, "Unknown BD ARGB overlay command: %u", overlay->cmd);
        break;
    }
}
