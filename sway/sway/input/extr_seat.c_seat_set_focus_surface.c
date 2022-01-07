
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct sway_seat {int has_focus; } ;
struct sway_node {int dummy; } ;


 struct sway_node* seat_get_focus (struct sway_seat*) ;
 int seat_keyboard_notify_enter (struct sway_seat*,struct wlr_surface*) ;
 int seat_send_unfocus (struct sway_node*,struct sway_seat*) ;
 int seat_tablet_pads_notify_enter (struct sway_seat*,struct wlr_surface*) ;

void seat_set_focus_surface(struct sway_seat *seat,
  struct wlr_surface *surface, bool unfocus) {
 if (seat->has_focus && unfocus) {
  struct sway_node *focus = seat_get_focus(seat);
  seat_send_unfocus(focus, seat);
  seat->has_focus = 0;
 }
 seat_keyboard_notify_enter(seat, surface);
 seat_tablet_pads_notify_enter(seat, surface);
}
