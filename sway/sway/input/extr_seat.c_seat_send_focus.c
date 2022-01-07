
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_xwayland {int dummy; } ;
struct wlr_pointer_constraint_v1 {int dummy; } ;
struct sway_view {scalar_t__ type; int surface; } ;
struct sway_seat {int cursor; int wlr_seat; } ;
struct sway_node {scalar_t__ type; TYPE_2__* sway_container; } ;
struct TYPE_4__ {struct wlr_xwayland* wlr_xwayland; } ;
struct TYPE_6__ {int pointer_constraints; TYPE_1__ xwayland; } ;
struct TYPE_5__ {struct sway_view* view; } ;


 scalar_t__ N_CONTAINER ;
 scalar_t__ SWAY_VIEW_XWAYLAND ;
 scalar_t__ seat_is_input_allowed (struct sway_seat*,int ) ;
 int seat_keyboard_notify_enter (struct sway_seat*,int ) ;
 int seat_send_activate (struct sway_node*,struct sway_seat*) ;
 int seat_tablet_pads_notify_enter (struct sway_seat*,int ) ;
 TYPE_3__ server ;
 int sway_cursor_constrain (int ,struct wlr_pointer_constraint_v1*) ;
 struct wlr_pointer_constraint_v1* wlr_pointer_constraints_v1_constraint_for_surface (int ,int ,int ) ;
 int wlr_xwayland_set_seat (struct wlr_xwayland*,int ) ;

__attribute__((used)) static void seat_send_focus(struct sway_node *node, struct sway_seat *seat) {
 seat_send_activate(node, seat);

 struct sway_view *view = node->type == N_CONTAINER ?
  node->sway_container->view : ((void*)0);

 if (view && seat_is_input_allowed(seat, view->surface)) {







  seat_keyboard_notify_enter(seat, view->surface);
  seat_tablet_pads_notify_enter(seat, view->surface);

  struct wlr_pointer_constraint_v1 *constraint =
   wlr_pointer_constraints_v1_constraint_for_surface(
    server.pointer_constraints, view->surface, seat->wlr_seat);
  sway_cursor_constrain(seat->cursor, constraint);
 }
}
