
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct vlc_vidsplit_part* sys; } ;
struct TYPE_10__ {TYPE_2__ owner; } ;
typedef TYPE_3__ vout_window_t ;
typedef int vout_window_mouse_event_t ;
struct TYPE_11__ {TYPE_1__* cfg; TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_12__ {int parts; int lock; int splitter; } ;
typedef TYPE_5__ vout_display_sys_t ;
struct vlc_vidsplit_part {int dummy; } ;
struct TYPE_8__ {int window; } ;


 scalar_t__ VLC_SUCCESS ;
 scalar_t__ video_splitter_Mouse (int *,struct vlc_vidsplit_part*,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_object_parent (TYPE_3__*) ;
 int vout_window_SendMouseEvent (int ,int *) ;

__attribute__((used)) static void vlc_vidsplit_window_MouseEvent(vout_window_t *wnd,
                                           const vout_window_mouse_event_t *e)
{
    struct vlc_vidsplit_part *part = wnd->owner.sys;
    vout_display_t *vd = (vout_display_t *)vlc_object_parent(wnd);
    vout_display_sys_t *sys = vd->sys;
    vout_window_mouse_event_t ev = *e;

    vlc_mutex_lock(&sys->lock);
    if (video_splitter_Mouse(&sys->splitter, part - sys->parts,
                             &ev) == VLC_SUCCESS)
        vout_window_SendMouseEvent(vd->cfg->window, &ev);
    vlc_mutex_unlock(&sys->lock);
}
