
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_tablet_pad_button {scalar_t__ state; int time_msec; int button; int mode; int group; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_pad {int tablet_v2_pad; int current_surface; } ;
typedef enum zwp_tablet_pad_v2_button_state { ____Placeholder_zwp_tablet_pad_v2_button_state } zwp_tablet_pad_v2_button_state ;


 int button ;
 struct sway_tablet_pad* pad ;
 struct sway_tablet_pad* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_tablet_v2_tablet_pad_notify_button (int ,int ,int ,int) ;
 int wlr_tablet_v2_tablet_pad_notify_mode (int ,int ,int ,int ) ;

__attribute__((used)) static void handle_tablet_pad_button(struct wl_listener *listener, void *data) {
 struct sway_tablet_pad *pad = wl_container_of(listener, pad, button);
 struct wlr_event_tablet_pad_button *event = data;

 if (!pad->current_surface) {
  return;
 }

 wlr_tablet_v2_tablet_pad_notify_mode(pad->tablet_v2_pad,
  event->group, event->mode, event->time_msec);

 wlr_tablet_v2_tablet_pad_notify_button(pad->tablet_v2_pad,
  event->button, event->time_msec,
  (enum zwp_tablet_pad_v2_button_state)event->state);
}
