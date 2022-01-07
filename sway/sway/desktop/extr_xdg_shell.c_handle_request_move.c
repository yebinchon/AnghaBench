
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_xdg_toplevel_move_event {scalar_t__ serial; TYPE_2__* seat; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int container; } ;
struct sway_xdg_shell_view {struct sway_view view; } ;
struct sway_seat {scalar_t__ last_button_serial; } ;
struct TYPE_4__ {TYPE_1__* seat; } ;
struct TYPE_3__ {struct sway_seat* data; } ;


 int container_is_floating (int ) ;
 int request_move ;
 int seatop_begin_move_floating (struct sway_seat*,int ) ;
 struct sway_xdg_shell_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xdg_shell_view* xdg_shell_view ;

__attribute__((used)) static void handle_request_move(struct wl_listener *listener, void *data) {
 struct sway_xdg_shell_view *xdg_shell_view =
  wl_container_of(listener, xdg_shell_view, request_move);
 struct sway_view *view = &xdg_shell_view->view;
 if (!container_is_floating(view->container)) {
  return;
 }
 struct wlr_xdg_toplevel_move_event *e = data;
 struct sway_seat *seat = e->seat->seat->data;
 if (e->serial == seat->last_button_serial) {
  seatop_begin_move_floating(seat, view->container);
 }
}
