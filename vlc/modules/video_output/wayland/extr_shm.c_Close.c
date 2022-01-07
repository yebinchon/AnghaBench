
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_13__ {scalar_t__ active_buffers; int eventq; int shm; int * viewporter; int * viewport; TYPE_3__* embed; } ;
typedef TYPE_5__ vout_display_sys_t ;
struct wl_surface {int dummy; } ;
struct wl_display {int dummy; } ;
struct TYPE_10__ {struct wl_surface* wl; } ;
struct TYPE_9__ {struct wl_display* wl; } ;
struct TYPE_11__ {TYPE_2__ handle; TYPE_1__ display; } ;


 int free (TYPE_5__*) ;
 int msg_Dbg (TYPE_4__*,char*,...) ;
 int wl_display_flush (struct wl_display*) ;
 int wl_display_roundtrip_queue (struct wl_display*,int ) ;
 int wl_event_queue_destroy (int ) ;
 int wl_shm_destroy (int ) ;
 int wl_surface_attach (struct wl_surface*,int *,int ,int ) ;
 int wl_surface_commit (struct wl_surface*) ;
 int wp_viewport_destroy (int *) ;
 int wp_viewporter_destroy (int *) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    struct wl_display *display = sys->embed->display.wl;
    struct wl_surface *surface = sys->embed->handle.wl;

    wl_surface_attach(surface, ((void*)0), 0, 0);
    wl_surface_commit(surface);


    while (sys->active_buffers > 0) {
        msg_Dbg(vd, "%zu buffer(s) still active", sys->active_buffers);
        wl_display_roundtrip_queue(display, sys->eventq);
    }
    msg_Dbg(vd, "no active buffers left");

    if (sys->viewport != ((void*)0))
        wp_viewport_destroy(sys->viewport);
    if (sys->viewporter != ((void*)0))
        wp_viewporter_destroy(sys->viewporter);
    wl_shm_destroy(sys->shm);
    wl_display_flush(display);
    wl_event_queue_destroy(sys->eventq);
    free(sys);
}
