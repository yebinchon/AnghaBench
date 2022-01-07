
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_keyboard {int dummy; } ;
struct sway_seat {int wlr_seat; TYPE_2__* cursor; struct seatop_resize_floating_event* seatop_data; int * seatop_impl; } ;
struct sway_container {int height; int width; int y; int x; } ;
struct seatop_resize_floating_event {int edge; int ref_height; int ref_width; int ref_con_ly; int ref_con_lx; int ref_ly; int ref_lx; int preserve_ratio; struct sway_container* con; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
struct TYPE_4__ {TYPE_1__* cursor; } ;
struct TYPE_3__ {int y; int x; } ;


 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_RIGHT ;
 int WLR_MODIFIER_SHIFT ;
 struct seatop_resize_floating_event* calloc (int,int) ;
 int container_raise_floating (struct sway_container*) ;
 int cursor_set_image (TYPE_2__*,char const*,int *) ;
 int seatop_end (struct sway_seat*) ;
 int seatop_impl ;
 int wlr_keyboard_get_modifiers (struct wlr_keyboard*) ;
 struct wlr_keyboard* wlr_seat_get_keyboard (int ) ;
 int wlr_seat_pointer_clear_focus (int ) ;
 char* wlr_xcursor_get_resize_name (int) ;

void seatop_begin_resize_floating(struct sway_seat *seat,
  struct sway_container *con, enum wlr_edges edge) {
 seatop_end(seat);

 struct seatop_resize_floating_event *e =
  calloc(1, sizeof(struct seatop_resize_floating_event));
 if (!e) {
  return;
 }
 e->con = con;

 struct wlr_keyboard *keyboard = wlr_seat_get_keyboard(seat->wlr_seat);
 e->preserve_ratio = keyboard &&
  (wlr_keyboard_get_modifiers(keyboard) & WLR_MODIFIER_SHIFT);

 e->edge = edge == WLR_EDGE_NONE ? WLR_EDGE_BOTTOM | WLR_EDGE_RIGHT : edge;
 e->ref_lx = seat->cursor->cursor->x;
 e->ref_ly = seat->cursor->cursor->y;
 e->ref_con_lx = con->x;
 e->ref_con_ly = con->y;
 e->ref_width = con->width;
 e->ref_height = con->height;

 seat->seatop_impl = &seatop_impl;
 seat->seatop_data = e;

 container_raise_floating(con);

 const char *image = edge == WLR_EDGE_NONE ?
  "se-resize" : wlr_xcursor_get_resize_name(edge);
 cursor_set_image(seat->cursor, image, ((void*)0));
 wlr_seat_pointer_clear_focus(seat->wlr_seat);
}
