
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {int lock; TYPE_4__** p_overlays; } ;
struct TYPE_10__ {TYPE_1__ bdj; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ status; int b_on_vout; int lock; } ;
typedef TYPE_4__ bluray_overlay_t ;


 int MAX_OVERLAY ;
 scalar_t__ ToDisplay ;
 int bluraySendOverlayToVout (TYPE_2__*,int,TYPE_4__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void blurayHandleOverlays(demux_t *p_demux)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vlc_mutex_lock(&p_sys->bdj.lock);

    for (int i = 0; i < MAX_OVERLAY; i++) {
        bluray_overlay_t *ov = p_sys->bdj.p_overlays[i];
        if (!ov) {
            continue;
        }
        vlc_mutex_lock(&ov->lock);
        bool display = ov->status == ToDisplay;
        vlc_mutex_unlock(&ov->lock);
        if (display && !ov->b_on_vout)
        {





            bluraySendOverlayToVout(p_demux, i, ov);
        }
    }

    vlc_mutex_unlock(&p_sys->bdj.lock);
}
