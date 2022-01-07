
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct wlr_keyboard {int modifiers; } ;
struct sway_shortcut_state {int npressed; int * pressed_keycodes; } ;
struct sway_seat {int wlr_seat; } ;
struct sway_keyboard {struct sway_shortcut_state state_pressed_sent; } ;


 int assert (int) ;
 struct sway_keyboard* sway_keyboard_for_wlr_keyboard (struct sway_seat*,struct wlr_keyboard*) ;
 struct wlr_keyboard* wlr_seat_get_keyboard (int ) ;
 int wlr_seat_keyboard_notify_enter (int ,struct wlr_surface*,int *,int ,int *) ;

__attribute__((used)) static void seat_keyboard_notify_enter(struct sway_seat *seat,
  struct wlr_surface *surface) {
 struct wlr_keyboard *keyboard = wlr_seat_get_keyboard(seat->wlr_seat);
 if (!keyboard) {
  wlr_seat_keyboard_notify_enter(seat->wlr_seat, surface, ((void*)0), 0, ((void*)0));
  return;
 }

 struct sway_keyboard *sway_keyboard =
  sway_keyboard_for_wlr_keyboard(seat, keyboard);
 assert(sway_keyboard && "Cannot find sway_keyboard for seat keyboard");

 struct sway_shortcut_state *state = &sway_keyboard->state_pressed_sent;
 wlr_seat_keyboard_notify_enter(seat->wlr_seat, surface,
   state->pressed_keycodes, state->npressed, &keyboard->modifiers);
}
