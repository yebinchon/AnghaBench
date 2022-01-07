
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wlr_surface {int dummy; } ;
struct sway_seat {struct sway_cursor* cursor; struct seatop_default_event* seatop_data; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct seatop_default_event {int previous_node; } ;
struct TYPE_2__ {int y; int x; } ;


 int cursor_do_rebase (struct sway_cursor*,int ,int ,struct wlr_surface*,double,double) ;
 int node_at_coords (struct sway_seat*,int ,int ,struct wlr_surface**,double*,double*) ;

__attribute__((used)) static void handle_rebase(struct sway_seat *seat, uint32_t time_msec) {
 struct seatop_default_event *e = seat->seatop_data;
 struct sway_cursor *cursor = seat->cursor;
 struct wlr_surface *surface = ((void*)0);
 double sx = 0.0, sy = 0.0;
 e->previous_node = node_at_coords(seat,
   cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);
 cursor_do_rebase(cursor, time_msec, e->previous_node, surface, sx, sy);
}
