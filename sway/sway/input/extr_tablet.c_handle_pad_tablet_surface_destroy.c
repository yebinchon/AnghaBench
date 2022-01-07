
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct sway_tablet_pad {int * current_surface; TYPE_1__ surface_destroy; int tablet_v2_pad; } ;


 int surface_destroy ;
 struct sway_tablet_pad* tablet_pad ;
 struct sway_tablet_pad* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;
 int wlr_tablet_v2_tablet_pad_notify_leave (int ,int *) ;

__attribute__((used)) static void handle_pad_tablet_surface_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_tablet_pad *tablet_pad =
  wl_container_of(listener, tablet_pad, surface_destroy);

 wlr_tablet_v2_tablet_pad_notify_leave(tablet_pad->tablet_v2_pad,
  tablet_pad->current_surface);
 wl_list_remove(&tablet_pad->surface_destroy.link);
 wl_list_init(&tablet_pad->surface_destroy.link);
 tablet_pad->current_surface = ((void*)0);
}
