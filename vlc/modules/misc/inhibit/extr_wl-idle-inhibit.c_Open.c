
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct wl_display* wl; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ display; } ;
typedef TYPE_2__ vout_window_t ;
typedef int vlc_object_t ;
struct TYPE_11__ {int inhibit; TYPE_4__* p_sys; } ;
typedef TYPE_3__ vlc_inhibit_t ;
struct TYPE_12__ {int * eventq; int * manager; int * inhibitor; } ;
typedef TYPE_4__ vlc_inhibit_sys_t ;
struct wl_registry {int dummy; } ;
struct wl_proxy {int dummy; } ;
struct wl_display {int dummy; } ;


 int Inhibit ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ VOUT_WINDOW_TYPE_WAYLAND ;
 int registry_cbs ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__* vlc_inhibit_GetWindow (TYPE_3__*) ;
 TYPE_4__* vlc_obj_malloc (int *,int) ;
 int * wl_display_create_queue (struct wl_display*) ;
 struct wl_registry* wl_display_get_registry (struct wl_display*) ;
 int wl_display_roundtrip_queue (struct wl_display*,int *) ;
 int wl_event_queue_destroy (int *) ;
 int wl_proxy_set_queue (struct wl_proxy*,int *) ;
 int wl_registry_add_listener (struct wl_registry*,int *,TYPE_3__*) ;
 int wl_registry_destroy (struct wl_registry*) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vout_window_t *wnd = vlc_inhibit_GetWindow(ih);

    if (wnd->type != VOUT_WINDOW_TYPE_WAYLAND)
        return VLC_EGENERIC;

    vlc_inhibit_sys_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->manager = ((void*)0);
    sys->inhibitor = ((void*)0);
    ih->p_sys = sys;

    struct wl_display *display = wnd->display.wl;

    sys->eventq = wl_display_create_queue(display);
    if (sys->eventq == ((void*)0))
        return VLC_ENOMEM;

    struct wl_registry *registry = wl_display_get_registry(display);
    if (registry == ((void*)0))
        goto error;

    wl_registry_add_listener(registry, &registry_cbs, ih);
    wl_proxy_set_queue((struct wl_proxy *)registry, sys->eventq);
    wl_display_roundtrip_queue(display, sys->eventq);
    wl_registry_destroy(registry);

    if (sys->manager == ((void*)0))
        goto error;

    ih->inhibit = Inhibit;
    return VLC_SUCCESS;

error:
    if (sys->eventq != ((void*)0))
        wl_event_queue_destroy(sys->eventq);
    return VLC_EGENERIC;
}
