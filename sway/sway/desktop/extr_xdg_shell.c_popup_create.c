
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unmap; int map; int destroy; int new_popup; } ;
struct wlr_xdg_surface {TYPE_1__ events; int surface; } ;
struct wlr_xdg_popup {struct wlr_xdg_surface* base; } ;
struct TYPE_5__ {int notify; } ;
struct TYPE_6__ {TYPE_2__ surface_unmap; TYPE_2__ surface_map; } ;
struct sway_xdg_popup {TYPE_3__ child; TYPE_2__ destroy; TYPE_2__ new_popup; struct wlr_xdg_surface* wlr_xdg_surface; } ;
struct sway_view {int dummy; } ;


 struct sway_xdg_popup* calloc (int,int) ;
 int popup_handle_destroy ;
 int popup_handle_new_popup ;
 int popup_impl ;
 int popup_unconstrain (struct sway_xdg_popup*) ;
 int view_child_init (TYPE_3__*,int *,struct sway_view*,int ) ;
 int wl_signal_add (int *,TYPE_2__*) ;

__attribute__((used)) static struct sway_xdg_popup *popup_create(
  struct wlr_xdg_popup *wlr_popup, struct sway_view *view) {
 struct wlr_xdg_surface *xdg_surface = wlr_popup->base;

 struct sway_xdg_popup *popup =
  calloc(1, sizeof(struct sway_xdg_popup));
 if (popup == ((void*)0)) {
  return ((void*)0);
 }
 view_child_init(&popup->child, &popup_impl, view, xdg_surface->surface);
 popup->wlr_xdg_surface = xdg_surface;

 wl_signal_add(&xdg_surface->events.new_popup, &popup->new_popup);
 popup->new_popup.notify = popup_handle_new_popup;
 wl_signal_add(&xdg_surface->events.destroy, &popup->destroy);
 popup->destroy.notify = popup_handle_destroy;

 wl_signal_add(&xdg_surface->events.map, &popup->child.surface_map);
 wl_signal_add(&xdg_surface->events.unmap, &popup->child.surface_unmap);

 popup_unconstrain(popup);

 return popup;
}
