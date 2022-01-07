
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_seat_request_set_selection_event {int serial; int source; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {int wlr_seat; } ;


 int request_set_selection ;
 struct sway_seat* seat ;
 struct sway_seat* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_seat_set_selection (int ,int ,int ) ;

__attribute__((used)) static void handle_request_set_selection(struct wl_listener *listener,
  void *data) {
 struct sway_seat *seat =
  wl_container_of(listener, seat, request_set_selection);
 struct wlr_seat_request_set_selection_event *event = data;
 wlr_seat_set_selection(seat->wlr_seat, event->source, event->serial);
}
