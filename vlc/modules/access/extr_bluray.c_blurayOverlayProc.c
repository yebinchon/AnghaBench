
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_14__ {int lock; } ;
struct TYPE_16__ {TYPE_1__ bdj; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_17__ {int cmd; int plane; int h; int w; } ;
typedef TYPE_4__ BD_OVERLAY ;
 int MAX_OVERLAY ;
 int blurayActivateOverlay (TYPE_2__*,int) ;
 int blurayClearOverlay (TYPE_2__*,int) ;
 int blurayCloseOverlay (TYPE_2__*,int) ;
 int blurayDrawOverlay (TYPE_2__*,TYPE_4__ const* const) ;
 int blurayInitOverlay (TYPE_2__*,int,int ,int ) ;
 int msg_Info (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void blurayOverlayProc(void *ptr, const BD_OVERLAY *const overlay)
{
    demux_t *p_demux = (demux_t*)ptr;
    demux_sys_t *p_sys = p_demux->p_sys;

    vlc_mutex_lock(&p_sys->bdj.lock);

    if (!overlay) {
        msg_Info(p_demux, "Closing overlays.");
        for (int i = 0; i < MAX_OVERLAY; i++)
            blurayCloseOverlay(p_demux, i);
        vlc_mutex_unlock(&p_sys->bdj.lock);
        return;
    }

    switch (overlay->cmd) {
    case 129:
        msg_Info(p_demux, "Initializing overlay");
        blurayInitOverlay(p_demux, overlay->plane, overlay->w, overlay->h);
        break;
    case 132:
        blurayClearOverlay(p_demux, overlay->plane);
        blurayCloseOverlay(p_demux, overlay->plane);
        break;
    case 133:
        blurayClearOverlay(p_demux, overlay->plane);
        break;
    case 130:
        blurayActivateOverlay(p_demux, overlay->plane);
        break;
    case 131:
    case 128:
        blurayDrawOverlay(p_demux, overlay);
        break;
    default:
        msg_Warn(p_demux, "Unknown BD overlay command: %u", overlay->cmd);
        break;
    }

    vlc_mutex_unlock(&p_sys->bdj.lock);
}
