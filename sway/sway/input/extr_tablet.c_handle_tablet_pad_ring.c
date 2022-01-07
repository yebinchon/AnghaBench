
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_tablet_pad_ring {scalar_t__ source; int time_msec; int position; int ring; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_pad {int tablet_v2_pad; int current_surface; } ;


 scalar_t__ WLR_TABLET_PAD_RING_SOURCE_FINGER ;
 struct sway_tablet_pad* pad ;
 int ring ;
 struct sway_tablet_pad* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_tablet_v2_tablet_pad_notify_ring (int ,int ,int ,int,int ) ;

__attribute__((used)) static void handle_tablet_pad_ring(struct wl_listener *listener, void *data) {
 struct sway_tablet_pad *pad = wl_container_of(listener, pad, ring);
 struct wlr_event_tablet_pad_ring *event = data;

 if (!pad->current_surface) {
  return;
 }

 wlr_tablet_v2_tablet_pad_notify_ring(pad->tablet_v2_pad,
  event->ring, event->position,
  event->source == WLR_TABLET_PAD_RING_SOURCE_FINGER,
  event->time_msec);
}
