
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wlr_surface {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct sway_node {scalar_t__ type; int sway_container; } ;
struct sway_cursor {TYPE_1__* seat; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
struct TYPE_2__ {struct wlr_seat* wlr_seat; } ;


 scalar_t__ N_CONTAINER ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_RIGHT ;
 scalar_t__ container_is_floating (int ) ;
 int cursor_set_image (struct sway_cursor*,char*,int *) ;
 int find_resize_edge (int ,struct wlr_surface*,struct sway_cursor*) ;
 scalar_t__ seat_is_input_allowed (TYPE_1__*,struct wlr_surface*) ;
 int wlr_seat_pointer_clear_focus (struct wlr_seat*) ;
 int wlr_seat_pointer_notify_enter (struct wlr_seat*,struct wlr_surface*,double,double) ;
 char* wlr_xcursor_get_resize_name (int) ;

__attribute__((used)) static void cursor_do_rebase(struct sway_cursor *cursor, uint32_t time_msec,
  struct sway_node *node, struct wlr_surface *surface,
  double sx, double sy) {
 struct wlr_seat *wlr_seat = cursor->seat->wlr_seat;
 if (surface) {
  if (seat_is_input_allowed(cursor->seat, surface)) {
   wlr_seat_pointer_notify_enter(wlr_seat, surface, sx, sy);
  }
 } else if (node && node->type == N_CONTAINER) {

  enum wlr_edges edge = find_resize_edge(node->sway_container, surface, cursor);
  if (edge == WLR_EDGE_NONE) {
   cursor_set_image(cursor, "left_ptr", ((void*)0));
  } else if (container_is_floating(node->sway_container)) {
   cursor_set_image(cursor, wlr_xcursor_get_resize_name(edge), ((void*)0));
  } else {
   if (edge & (WLR_EDGE_LEFT | WLR_EDGE_RIGHT)) {
    cursor_set_image(cursor, "col-resize", ((void*)0));
   } else {
    cursor_set_image(cursor, "row-resize", ((void*)0));
   }
  }
 } else {
  cursor_set_image(cursor, "left_ptr", ((void*)0));
 }

 if (surface == ((void*)0)) {
  wlr_seat_pointer_clear_focus(wlr_seat);
 }
}
