
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_proxy {int dummy; } ;
struct wl_event_queue {int dummy; } ;
struct wl_display {int dummy; } ;
struct vlc_wl_registry {int * registry; int * names; int * interfaces; } ;


 int free (struct vlc_wl_registry*) ;
 struct vlc_wl_registry* malloc (int) ;
 int registry_cbs ;
 scalar_t__ unlikely (int ) ;
 int vlc_wl_registry_destroy (struct vlc_wl_registry*) ;
 int * wl_display_get_registry (struct wl_display*) ;
 scalar_t__ wl_display_roundtrip_queue (struct wl_display*,struct wl_event_queue*) ;
 struct wl_display* wl_proxy_create_wrapper (struct wl_display*) ;
 int wl_proxy_set_queue (struct wl_proxy*,struct wl_event_queue*) ;
 int wl_proxy_wrapper_destroy (struct wl_display*) ;
 int wl_registry_add_listener (int *,int *,struct vlc_wl_registry*) ;

struct vlc_wl_registry *vlc_wl_registry_get(struct wl_display *display,
                                            struct wl_event_queue *queue)
{
    struct vlc_wl_registry *vr = malloc(sizeof (*vr));
    if (unlikely(vr == ((void*)0)))
        return ((void*)0);

    struct wl_display *wrapper = wl_proxy_create_wrapper(display);
    if (unlikely(wrapper == ((void*)0)))
        goto error;

    wl_proxy_set_queue((struct wl_proxy *)wrapper, queue);
    vr->registry = wl_display_get_registry(wrapper);
    wl_proxy_wrapper_destroy(wrapper);

    if (unlikely(vr->registry == ((void*)0)))
        goto error;

    vr->interfaces = ((void*)0);
    vr->names = ((void*)0);

    wl_registry_add_listener(vr->registry, &registry_cbs, vr);


    if (wl_display_roundtrip_queue(display, queue) < 0)
    {
        vlc_wl_registry_destroy(vr);
        vr = ((void*)0);
    }

    return vr;
error:
    free(vr);
    return vr;
}
