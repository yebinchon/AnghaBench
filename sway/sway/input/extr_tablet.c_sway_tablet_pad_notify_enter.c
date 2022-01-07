
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int destroy; } ;
struct wlr_surface {TYPE_2__ events; } ;
struct TYPE_6__ {int notify; int link; } ;
struct sway_tablet_pad {TYPE_3__ surface_destroy; struct wlr_surface* current_surface; TYPE_1__* tablet; int tablet_v2_pad; } ;
struct TYPE_4__ {int tablet_v2; } ;


 int handle_pad_tablet_surface_destroy ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;
 int wl_signal_add (int *,TYPE_3__*) ;
 int wlr_surface_accepts_tablet_v2 (int ,struct wlr_surface*) ;
 int wlr_tablet_v2_tablet_pad_notify_enter (int ,int ,struct wlr_surface*) ;
 int wlr_tablet_v2_tablet_pad_notify_leave (int ,struct wlr_surface*) ;

void sway_tablet_pad_notify_enter(struct sway_tablet_pad *tablet_pad,
  struct wlr_surface *surface) {
 if (!tablet_pad || !tablet_pad->tablet) {
  return;
 }

 if (surface == tablet_pad->current_surface) {
  return;
 }


 if (tablet_pad->current_surface) {
  wlr_tablet_v2_tablet_pad_notify_leave(tablet_pad->tablet_v2_pad,
   tablet_pad->current_surface);
  wl_list_remove(&tablet_pad->surface_destroy.link);
  wl_list_init(&tablet_pad->surface_destroy.link);
  tablet_pad->current_surface = ((void*)0);
 }

 if (!wlr_surface_accepts_tablet_v2(tablet_pad->tablet->tablet_v2, surface)) {
  return;
 }

 wlr_tablet_v2_tablet_pad_notify_enter(tablet_pad->tablet_v2_pad,
  tablet_pad->tablet->tablet_v2, surface);

 tablet_pad->current_surface = surface;
 wl_list_remove(&tablet_pad->surface_destroy.link);
 tablet_pad->surface_destroy.notify = handle_pad_tablet_surface_destroy;
 wl_signal_add(&surface->events.destroy, &tablet_pad->surface_destroy);
}
